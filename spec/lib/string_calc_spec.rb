require_relative '../spec_helper'
require_relative '../../lib/string_calc'

describe 'String Calculator' do
  describe 'Adding numbers' do
    context 'Empty string' do
      it 'returns zero' do
        StringCalculator.new.add('').should be 0
      end
    end
  end
end