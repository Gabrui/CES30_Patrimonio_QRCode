class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :nome
      t.text :descricao
      
      t.belongs_to :estado, foreign_key:true
      t.belongs_to :silom, foreign_key: true
      t.belongs_to :usuario, foreign_key: true
      t.belongs_to :local, foreign_key: true

      t.timestamps
    end
  end
end
