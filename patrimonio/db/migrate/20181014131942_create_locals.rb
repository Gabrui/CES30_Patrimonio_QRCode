class CreateLocals < ActiveRecord::Migration[5.2]
  def change
    create_table :locals do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
