class CreateSilomAntigos < ActiveRecord::Migration[5.2]
  def change
    create_table :silom_antigos do |t|
      t.string :dependencia
      t.string :conta
      t.string :classe
      t.integer :bmp
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
      t.timestamp :data_modificacao

      t.timestamps
    end
  end
end
