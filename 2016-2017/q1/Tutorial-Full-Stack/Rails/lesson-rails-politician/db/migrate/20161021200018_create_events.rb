class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.integer :capacity

      t.timestamps
    end
  end
end
