# frozen_string_literal: true

require_relative 'notifications/broadcaster'

class Newsletter
  class << self
    def sign
      sign!
    end

    private

    def sign!
      Notifications::Broadcaster.deliver!
    end
  end
end

Newsletter.sign