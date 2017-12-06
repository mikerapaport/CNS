class Parent < ApplicationRecord
  validates_presence_of :firstname, :lastname, :street, :city, :state, :zipcode, :phone, :email
  #belongs_to :user
  #has_one :user
  belongs_to :user
  has_many :children

end
