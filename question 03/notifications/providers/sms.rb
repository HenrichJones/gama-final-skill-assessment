# frozen_string_literal: true

module Providers
  class Sms
    class << self
      def notify!
        puts 'Mensagem enviadao por SMS com sucesso!'
      end
    end
  end
end
