# frozen_string_literal: true

class Action
  def initialize(type)
    @type = type.downcase
  end

  def call
    return public_send(@type) if respond_to? @type

    raise "Type not mapped! try a valid type like #{Action.instance_methods(false)}"
  end

  def type1
    puts 'Executa ação type1'
  end

  def type2
    puts 'Executa ação type2'
  end

  def type3
    puts 'Executa ação type3'
  end

  def type4
    puts 'Executa ação type4'
  end

  def type5
    puts 'Executa ação type5'
  end

  def type6
    puts 'Executa ação type6'
  end
end

Action.new('type2').call