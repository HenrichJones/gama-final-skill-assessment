# frozen_string_literal: true

require 'ostruct'
require_relative 'services/notifications/sender_service'

class Order
  def initialize(description, notify_method)
    @order = OpenStruct.new(description:, notify_method:)
  end

  def confirm!
    Notifications::SenderService.new(@order).notify!
  end
end

Order.new('Almoço completo', :whatsapp).confirm!
