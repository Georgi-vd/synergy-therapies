class CreateActualites < ActiveRecord::Migration[5.2]
  def change
    create_table :actualites do |t|
      t.string :name
      t.text :description
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
