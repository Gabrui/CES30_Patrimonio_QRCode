class Item < ApplicationRecord
  belongs_to :silom
  belongs_to :usuario
  belongs_to :local
  belongs_to :estado
  belongs_to :categoria

  has_many :impressoes
  has_many :leituras

end
