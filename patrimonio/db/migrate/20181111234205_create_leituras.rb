class CreateLeituras < ActiveRecord::Migration[5.2]
  def change
    create_table :leituras do |t|
      t.references :usuario, foreign_key: true
      t.datetime :dia
      t.string :lido
      t.references :local, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
