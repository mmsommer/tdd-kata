require_relative '../spec_helper'
require_relative '../../lib/string_calc'

describe 'String Calculator' do
  let(:make_calc) { StringCalculator.new }

  describe 'Adding numbers' do
    context 'Empty string' do
      it 'returns zero' do
        make_calc.add('').should be 0
      end
    end

    context 'Single number' do
      it 'returns that number' do
        make_calc.add('1').should be 1
      end

      it 'returns that number even if it is not 1' do
        make_calc.add('2').should be 2
      end
    end

    context 'Two numbers' do
      it 'returns the sum of 1,2 which is 3' do
        make_calc.add('1,2').should be 3
      end
    end

    context 'Unknown amount of numbers' do
      it 'handles them accordingly' do
        make_calc.add('1,2,3').should be 6
      end
    end

    context 'Newline instead of commas' do
      it 'returns the sum of "1\n2,3"' do
        make_calc.add('1\n2,3').should be 6
      end

      it 'throws error when \n is at end of line' do
        expect{make_calc.add('1,\n')}.to raise_error
      end
    end

    context 'Support different delimiters' do
      it '//;\n1;2 should return three where the default delimiter is ";"' do
        make_calc.add('//;\n1;2').should be 3
      end
    end

    context 'Negative numbers' do
      it '-1 should raise exception "negatives not allowed: -1"' do
        expect{make_calc.add('-1')}.to raise_error 'negatives not allowed: -1'
      end

      it '-1,-2 should raise exception "negatives not allowed: -1,-2"' do
        pending
        #expect{make_calc.add('-1,-2')}.to raise_error 'negatives not allowed: -1,-2'
      end
    end
  end
end