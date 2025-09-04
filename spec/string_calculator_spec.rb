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

    context 'when a custom delimiter is specified' do
      it 'returns the sum based on the delimiter' do
        expect(StringCalculator.new.add("//;\n1;2")).to eq(3)
      end
    end

    context 'when one negative integer is present' do
      it 'raises an error' do
        expect { StringCalculator.new.add("-1") }.to raise_error("negative numbers not allowed -1")
      end
    end

    context 'when more than one negative integer is present' do
      it 'raises an error with all the negative integers in it' do
        expect { StringCalculator.new.add("-1,-2,3") }.to raise_error("negative numbers not allowed -1,-2")
      end
    end

    context 'when array has numbers greater than 1000' do
      it 'ignores them in the summation' do
        expect(StringCalculator.new.add("1,1001")).to eq(1)
      end
    end

    context 'when delimiter can be of any length' do
      it 'still works' do
        expect(StringCalculator.new.add("//[***]\n1***2***3")).to eq(6)
      end
    end

    context 'when multiple delimiters are specified' do
      it 'still works' do
        expect(StringCalculator.new.add("//[*][%]\n1*2%3")).to eq(6)
        end
    end
  end
end
