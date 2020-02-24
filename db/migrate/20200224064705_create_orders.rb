class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :merchant, foreign_key: true, null: false
      t.references :shopper, foreign_key: true, null: false
      t.decimal :amount, precision: 8, scale: 2, null: false
      t.datetime :created_at, null: false, default: Time.now
      t.datetime :completed_at
    end
  end
end
