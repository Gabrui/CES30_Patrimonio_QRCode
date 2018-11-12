class Leitura < ApplicationRecord
  belongs_to :usuario
  belongs_to :local
  belongs_to :item
end
