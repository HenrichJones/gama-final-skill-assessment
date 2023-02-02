# frozen_string_literal: true

class Customer < Person
  validates :documentation, format: { with: %r{/^\d{3}\.\d{3}\.\d{3}\-\d{2}$/} }
end

class Company < Person
  validates :documentation, format: { with: %r{/^\d{2}\.\d{3}\.\d{3}\/\d{4}\-\d{2}$/} }
end

class Person < ActiveRecord
  attribute :documentation

  validates :documentation,
    presence: true,
    uniqueness: { case_sensitive: false }
end
