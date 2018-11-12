class CreateLocais < ActiveRecord::Migration[5.2]
  def change
    create_table :locais do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
