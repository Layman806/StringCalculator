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

    context 'when multiple numbers are provided' do
      it 'returns the sum of all numbers' do
        expect(StringCalculator.new.add('1,2,3')).to eq(6)
      end
    end

    context 'when delimiter could also be a newline character' do
      it 'still returns the sum of all numbers' do
        expect(StringCalculator.new.add("1\n2,3")).to eq(6)
      end
    end
  end
end
