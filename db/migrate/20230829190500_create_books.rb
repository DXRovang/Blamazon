class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :year
      t.decimal :price
      t.string :image
      t.integer :quantity
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
