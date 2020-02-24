require 'rails_helper'

RSpec.describe Order, type: :model do
  before(:each) do
    @merchant = Merchant.create(email: 'sample@test.com',
                               name: 'John Doe',
                               cif: 'F000000')
    @shopper = Shopper.create(email: 'sample@test.com',
                             name: 'John Doe',
                             nif: 'F000000')
  end
  it "is not valid with empty attributes" do
    expect(Order.new).not_to be_valid
  end

  it "is valid with valid attributes" do
    expect(Order.new(merchant: @merchant,
                     shopper: @shopper,
                     amount: 0)).to be_valid
  end
end
