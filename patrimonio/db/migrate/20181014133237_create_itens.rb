class CreateItens < ActiveRecord::Migration[5.2]
  def change
    create_table :itens do |t|
      t.string :nome
      t.text :descricao
      
      t.belongs_to :estado, foreign_key:true
      t.belongs_to :silom, foreign_key: true
      t.belongs_to :usuario, foreign_key: true
      t.belongs_to :local, foreign_key: true
      t.belongs_to :categoria, foreign_key: true

      t.datetime :catalogacao
      t.datetime :exclusao

      t.timestamps
    end
  end
end
