class Child < ApplicationRecord
  validates_presence_of :parent, :name, :dob, :status, :program
  belongs_to :parent
  attr_accessor :days

end
