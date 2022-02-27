class Flat < ApplicationRecord
  validates :name, :presence => true
  validates :number_of_guests, :inclusion => { :in => [1,2,3,4,5] }
  has_many :reviews, dependent: :destroy
end
