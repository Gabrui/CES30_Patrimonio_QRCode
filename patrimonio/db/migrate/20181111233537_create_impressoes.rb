class CreateImpressoes < ActiveRecord::Migration[5.2]
  def change
    create_table :impressoes do |t|
      t.references :usuario, foreign_key: true
      t.datetime :dia
      t.references :item, foreign_key: true
      t.string :gerado

      t.timestamps
    end
  end
end
