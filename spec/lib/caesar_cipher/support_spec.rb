# frozen_string_literal: true

RSpec.describe Support do
  describe '.alphabet_table' do
    subject(:alphabet_table) { described_class.alphabet_table }

    context 'when is built' do
      it { is_expected.to_not be_empty }
      it { is_expected.to_not be_nil }
      it { is_expected.to include(('a'..'z')) }
      it { expect(alphabet_table['a']).to eq 1  }
      it { expect(alphabet_table.length).to eq 26 }
    end
  end
end
