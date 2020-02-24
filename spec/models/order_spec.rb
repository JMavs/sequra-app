require 'rails_helper'

RSpec.describe Order, type: :model do
  it "is not valid with empty attributes" do
    expect(Order.new).not_to be_valid
  end
end
