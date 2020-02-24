# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

rules_data_info = [
  {
    min_amount: 0.01,
    max_amount: 49.99,
    percentage: 1
  },
  {
    min_amount: 50,
    max_amount: 300,
    percentage: 0.95
  },
  {
    min_amount: 300.01,
    max_amount: nil,
    percentage: 0.85
  }
]
disburse_rules = DisburseRule.create(rules_data_info)

def import_merchants
  filepath = File.join(Rails.root, ENV['SEQURA_IMPORT_DIR'], 'merchants.csv')
  csv = File.read(filepath)

  CSV.parse(csv, headers: false).each do |row|
    Merchant.create(id: row[0], name: row[1], email: row[2], cif: row[3])
  end
end

def import_shoppers
  filepath = File.join(Rails.root, ENV['SEQURA_IMPORT_DIR'], 'shoppers.csv')
  csv = File.read(filepath)

  CSV.parse(csv, headers: false).each do |row|
    Shopper.create(id: row[0], name: row[1], email: row[2], nif: row[3])
  end
end

def import_orders
  filepath = File.join(Rails.root, ENV['SEQURA_IMPORT_DIR'], 'orders.csv')
  csv = File.read(filepath)

  CSV.parse(csv, headers: false).each do |row|
    Order.create(id: row[0], merchant_id: row[1], shopper_id: row[2], amount: row[3].to_d, created_at: row[4], completed_at: row[5])
  end
end

if ENV['SEQURA_IMPORT_DIR']
  import_merchants
  import_shoppers
  import_orders
end
