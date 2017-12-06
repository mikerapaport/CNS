class Child < ApplicationRecord
  validates_presence_of :parent, :firstname, :lastname, :dob, :status, :program
  belongs_to :parent
  attr_accessor :days

end
