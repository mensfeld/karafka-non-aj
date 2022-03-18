# frozen_string_literal: true

describe Callable do
  describe '#call' do
    subject do
      Class.new do
        include Callable
      end
    end

    it 'raises an error when call is not implemented' do
      expect { subject.call }.to raise_error(NotImplementedError)
    end
  end
end
