class CreateImpressaos < ActiveRecord::Migration[5.2]
  def change
    create_table :impressaos do |t|
      t.references :usuario, foreign_key: true
      t.datetime :dia
      t.references :item, foreign_key: true
      t.string :gerado

      t.timestamps
    end
  end
end
