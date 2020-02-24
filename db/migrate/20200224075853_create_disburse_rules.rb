class CreateDisburseRules < ActiveRecord::Migration[5.2]
  def change
    create_table :disburse_rules do |t|
      t.decimal :min_amount, precision: 8, scale: 2, null: false
      t.decimal :max_amount, precision: 8, scale: 2, null: false
      t.decimal :percentage, precision: 5, scale: 2, null: false
    end
  end
end
