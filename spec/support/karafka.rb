# frozen_string_literal: true

require 'karafka/testing/rspec/helpers'
require Karafka.boot_file

RSpec.configure do |config|
  config.include Karafka::Testing::RSpec::Helpers
end
