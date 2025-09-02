require_relative '../string_calculator'

describe StringCalculator do
  describe '#add' do
    context 'when empty string' do
      it 'returns 0' do
        expect(StringCalculator.new.add('')).to eq(0)
      end
    end
  end
end
