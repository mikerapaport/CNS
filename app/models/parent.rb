class Parent < ApplicationRecord
  #belongs_to :user
  has_one :user
  has_many :children

end
