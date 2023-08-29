class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.date :death_date
      t.boolean :alive
      t.string :gender
      t.string :nationality

      t.timestamps
    end
  end
end
