class Atelier < ApplicationRecord
  belongs_to :product, optional: true
end
