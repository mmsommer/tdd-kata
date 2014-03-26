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
    end
  end
end