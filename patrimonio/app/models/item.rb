class Item < ApplicationRecord
  belongs_to :silom
  belongs_to :usuario
  belongs_to :local
  belongs_to :estado
  belongs_to :categoria

  has_many :impressoes
  has_many :leituras

  def self.to_csv
    attributes = %w{id nome descricao silom estado local usuario categoria catalogacao}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end

  end

end
