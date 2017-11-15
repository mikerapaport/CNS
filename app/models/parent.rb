class Parent < ApplicationRecord
  validates_presence_of :name, :address, :phone, :email
  #belongs_to :user
  has_one :user
  has_many :children

end
