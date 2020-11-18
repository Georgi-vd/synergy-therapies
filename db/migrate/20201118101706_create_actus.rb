class CreateActus < ActiveRecord::Migration[5.2]
  def change
    create_table :actus do |t|
      t.string :name
      t.text :desctiption
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
