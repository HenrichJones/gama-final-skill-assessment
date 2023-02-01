# frozen_string_literal: true

require_relative 'whatsapp_service'
require_relative 'email_service'
require_relative 'sms_service'

module Notifications
  class SenderService
    AVAILABLE_NOTIFY_METHODS = {
      whatsapp: ::Notifications::WhatsappService,
      email: ::Notifications::EmailService,
      sms: ::Notifications::SmsService
    }.freeze

    def initialize(order)
      @order_description = order.description
      @notify_method = order.notify_method
    end

    def notify!
      validate_notify_method

      AVAILABLE_NOTIFY_METHODS[@notify_method].deliver!(@order_description)
    end

    private

    def validate_notify_method
      return if AVAILABLE_NOTIFY_METHODS.keys.include? @notify_method

      raise "Invalid notify method for Order! Try to use #{AVAILABLE_NOTIFY_METHODS.keys}"
    end
  end
end
