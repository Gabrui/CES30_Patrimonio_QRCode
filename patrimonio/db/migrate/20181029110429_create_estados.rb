class CreateEstados < ActiveRecord::Migration[5.2]
  def change
    create_table :estados do |t|
      t.string :nome
      t.text :descricao
      t.integer :valor

      t.timestamps
    end
  end
end
