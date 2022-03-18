# frozen_string_literal: true

require ::File.expand_path('config/environment', __dir__)

class KarafkaApp < Karafka::App
  setup do |config|
    config.kafka = { 'bootstrap.servers': 'kafka:9091' }
    config.client_id = 'backend'
    config.max_messages = 10_000
    config.manual_offset_management = true


    config.concurrency = 2
    config.max_wait_time = 500
    # Recreate consumers with each batch. This will allow Rails code reload to work in the
    # development mode. Otherwise Karafka process would not be aware of code changes
    config.consumer_persistence = !Rails.env.development?
  end

  # Comment out this part if you are not using instrumentation and/or you are not
  # interested in logging events for certain environments. Since instrumentation
  # notifications add extra boilerplate, if you want to achieve max performance,
  # listen to only what you really need for given environment.
  # Karafka.monitor.subscribe(Karafka::Instrumentation::StdoutListener.new)
  # Karafka.monitor.subscribe(Karafka::Instrumentation::ProctitleListener.new)

  routes.draw do
    consumer_group :some_component_group do
      topic 'component.event_created' do
        consumer '::Component::Events::CreatedConsumer'
      end
    end
  end
end
