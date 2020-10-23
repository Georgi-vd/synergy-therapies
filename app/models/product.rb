class Product < ApplicationRecord
  has_many :soins
  has_many :ateliers
  has_many :actualities
end
