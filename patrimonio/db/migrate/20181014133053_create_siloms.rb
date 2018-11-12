class CreateSiloms < ActiveRecord::Migration[5.2]
  def change
    create_table :siloms do |t|
      t.string :dependencia
      t.string :conta
      t.string :classe
      t.integer :bmp, null: false, default: 0
      t.string :nomeclatura
      t.string :serie
      t.string :pn
      t.string :sispat
      t.string :fcg
      t.string :etiqueta
      t.integer :qtd
      t.decimal :valor_atualizado
      t.decimal :valor_depreciado
      t.decimal :valor_liquido
      t.string :situacao

      t.timestamps
    end
    add_index :siloms, :bmp, unique: true
  end
end
