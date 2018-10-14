class CreateLocals < ActiveRecord::Migration[5.2]
  def change
    create_table :locals do |t|
      t.string :nome
      t.string :sala
      t.string :predio
      t.string :descricao

      t.timestamps
    end
  end
end
