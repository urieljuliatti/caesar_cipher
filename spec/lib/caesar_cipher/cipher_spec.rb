# frozen_string_literal: true

include Base

RSpec.describe Cipher do
  subject { described_class.new(phrase: phrase, shift_factor: shift_factor).start }

  let(:phrase) { 'abc' }
  let(:shift_factor) { 1 }

  describe '.start' do
    context 'when is downcased' do
      it { is_expected.to eq('bcd') }
    end
    context 'when is upcased' do
      let(:phrase) { 'ABC'}

      it { is_expected.to eq('BCD') }
    end
    context 'when has empty values' do
      let(:phrase) { 'A B C' }
      let(:shift_factor) { 10 }

      it { is_expected.to eq('K L M') }
    end
    context 'when has numbers' do
      let(:phrase) { 'A B C 1' }
      let(:shift_factor) { 10 }

      it { is_expected.to eq('K L M 1')}
    end
    context 'when has special chars' do
      let(:phrase) { 'A B& C& 1!' }
      let(:shift_factor) { 10 }

      it { is_expected.to eq('K L& M& 1!')}
    end
  end
end
