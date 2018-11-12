class Item < ApplicationRecord
  belongs_to :silom
  belongs_to :usuario
  belongs_to :local

  has_many :impressoes
  has_many :leituras

end
