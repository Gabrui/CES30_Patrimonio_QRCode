class CreateLocais < ActiveRecord::Migration[5.2]
  def change
    create_table :locais do |t|
      t.string :nome
      t.text :descricao
      t.string :sala
      t.string :predio
      t.string :departamento
      t.string :instituicao

      t.timestamps
    end
  end
end
