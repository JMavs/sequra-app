require 'rails_helper'

RSpec.describe DisburseRule, type: :model do
  it "is not valid with empty attributes" do
    expect(DisburseRule.new).not_to be_valid
  end

  it "is valid with valid attributes" do
    expect(DisburseRule.new(min_amount: 0.01,
                            max_amount: 49.99,
                            percentage: 1)).to be_valid
  end
end
