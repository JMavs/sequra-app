# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
