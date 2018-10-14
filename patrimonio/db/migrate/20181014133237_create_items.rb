class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :qr_code
      t.string :descricao
      t.string :estado
      t.belongs_to :silom, foreign_key: true
      t.belongs_to :usuario, foreign_key: true
      t.belongs_to :local, foreign_key: true

      t.timestamps
    end
  end
end
