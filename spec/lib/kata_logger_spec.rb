require_relative '../spec_helper'
require_relative '../../lib/kata_logger'

describe 'KataLogger' do
  let(:make_logger) { KataLogger.new }

  describe 'Write log' do
    it 'accepts "text"' do
      expect{make_logger.write('text')}.not_to raise_error
    end
  end
end
