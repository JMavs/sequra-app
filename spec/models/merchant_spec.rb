require 'rails_helper'

RSpec.describe Merchant, type: :model do
  it "is not valid with empty attributes" do
    expect(Merchant.new).not_to be_valid
  end

  it "is valid with valid attributes" do
    expect(Merchant.new(email: 'sample@test.com',
                        name: 'John Doe',
                        cif: 'F000000')).to be_valid
  end
end
