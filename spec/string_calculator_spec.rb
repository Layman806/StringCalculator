require_relative '../string_calculator'

describe StringCalculator do
  describe '#add' do
    context 'when empty string' do
      it 'returns 0' do
        expect(StringCalculator.new.add('')).to eq(0)
      end
    end

    context 'when single number is provided' do
      it 'returns that number' do
        expect(StringCalculator.new.add('1')).to eq(1)
      end
    end
  end
end
