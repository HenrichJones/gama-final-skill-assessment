# frozen_string_literal: true

require_relative 'json_writer'
require_relative 'xml_writer'

class Writer
  FORMATS = {
    json: JsonWriter,
    xml: XmlWriter
  }.freeze

  def initialize(option)
    @option = option.downcase.to_sym
  end

  def execute
    FORMATS[@option].write!
  end
end

puts 'Qual arquivo você deseja salvar?'
puts 'JSON'
puts 'XML'

option = gets.chomp

Writer.new(option).execute
