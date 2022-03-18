# frozen_string_literal: true

module Callable
  extend ActiveSupport::Concern

  module ClassMethods
    def call(*args, **kwargs)
      new(*args, **kwargs).call
    end
  end

  included do
    def call
      raise NotImplementedError
    end
  end
end
