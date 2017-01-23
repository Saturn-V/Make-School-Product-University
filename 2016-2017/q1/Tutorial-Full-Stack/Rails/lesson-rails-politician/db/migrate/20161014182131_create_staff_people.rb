class CreateStaffPeople < ActiveRecord::Migration[5.0]
  def change
    create_table :staff_people do |t|
      t.string :name
      t.references :politician, foreign_key: true

      t.timestamps
    end
  end
end
