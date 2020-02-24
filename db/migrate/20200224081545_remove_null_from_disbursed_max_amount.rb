class RemoveNullFromDisbursedMaxAmount < ActiveRecord::Migration[5.2]
  def change
    change_column_null :disburse_rules, :max_amount, true
  end
end
