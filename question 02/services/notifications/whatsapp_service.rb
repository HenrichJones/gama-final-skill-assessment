# frozen_string_literal: true

module Notifications
  class WhatsappService
    class << self
      def deliver!(message)
        puts "Whatsapp +55829999999: Pedido realizado! seu '#{message}' foi registrado com sucesso <3"
      end
    end
  end
end
