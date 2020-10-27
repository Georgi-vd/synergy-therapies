class Actualite < ApplicationRecord
  belongs_to :product, optional: true
end
