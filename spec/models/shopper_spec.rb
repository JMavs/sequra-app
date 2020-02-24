require 'rails_helper'

RSpec.describe Shopper, type: :model do
  it "is not valid with empty attributes" do
    expect(Shopper.new).not_to be_valid
  end
  it "is valid with valid attributes" do
    expect(Shopper.new(email: 'sample@test.com',
                        name: 'John Doe',
                        nif: 'F000000')).to be_valid
  end
end
