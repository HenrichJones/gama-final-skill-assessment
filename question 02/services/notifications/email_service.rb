# frozen_string_literal: true

module Notifications
  class EmailService
    class << self
      def deliver!(message)
        puts "Email: Pedido realizado! seu '#{message}' foi registrado com sucesso <3"
      end
    end
  end
end
