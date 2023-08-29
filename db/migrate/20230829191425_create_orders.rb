class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.decimal :price
      t.string :confirmation_number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
