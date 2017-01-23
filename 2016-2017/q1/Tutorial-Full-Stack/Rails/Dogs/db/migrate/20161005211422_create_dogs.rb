class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :park
      t.string :breed
      t.decimal :price_hr

      t.timestamps null: false
    end
  end
end
