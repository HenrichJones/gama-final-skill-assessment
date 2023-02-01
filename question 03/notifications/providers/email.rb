# frozen_string_literal: true

module Providers
  class Email
    class << self
      def notify!
        puts 'Mensagem enviadao por Whatsapp com sucesso!'
      end
    end
  end
end
