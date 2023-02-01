# frozen_string_literal: true

module Notifications
  class SmsService
    class << self
      def deliver!(message)
        puts "SMS +8282: Pedido realizado! seu '#{message}' foi registrado com sucesso <3"
      end
    end
  end
end
