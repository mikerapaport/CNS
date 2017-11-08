class Child < ApplicationRecord
  validates_presence_of :parent
  belongs_to :parent

end
