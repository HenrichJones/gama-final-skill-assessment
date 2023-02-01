# frozen_string_literal: true

class Writer
  def initialize(input_format)
    @input_format = input_format
  end

  def execute!
    validate_input_format

    Kernel.const_get("#{@input_format.capitalize}Writer").new.write!
  end

  private

  def default_formats
    %i[xml html json csv]
  end

  def validate_input_format
    return if default_formats.include? @input_format.to_sym

    raise InvalidInputFormatError.new(
      "Format not supported yet! Try again with these formats: #{default_formats}"
    )
  end
end

class XmlWriter
  def write!
    p 'file writed!'
  end
end

class HtmlWriter
  def write!
    p 'file writed!'
  end
end

class JsonWriter
  def write!
    p 'file writed!'
  end
end

class CsvWriter
  def write!
    p 'file writed!'
  end
end

class InvalidInputFormatError < StandardError
  def initialize(message)
    @msg = message
    super
  end
end

instance = Writer.new('csv')
instance.execute!
