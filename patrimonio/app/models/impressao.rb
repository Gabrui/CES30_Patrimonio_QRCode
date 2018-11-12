class Impressao < ApplicationRecord
  belongs_to :usuario
  belongs_to :item
end
