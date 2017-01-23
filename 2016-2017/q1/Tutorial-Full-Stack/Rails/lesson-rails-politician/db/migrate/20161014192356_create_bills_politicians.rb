class CreateBillsPoliticians < ActiveRecord::Migration[5.0]
  def change
    create_table :bills_politicians do |t|
      t.references :bill, foreign_key: true
      t.references :politician, foreign_key: true
    end
  end
end
