# frozen_string_literal: true

require_relative 'providers/email'
require_relative 'providers/sms'

module Notifications
  class Broadcaster
    class << self
      NOTIFICATION_SERVICES = {
        email: ::Providers::Email,
        sms: ::Providers::Sms
      }.freeze

      def deliver!
        NOTIFICATION_SERVICES.values.each(&:notify!)
      end
    end
  end
end
