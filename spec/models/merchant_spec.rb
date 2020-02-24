require 'rails_helper'

RSpec.describe Merchant, type: :model do
  it "is not valid with empty attributes" do
    expect(Merchant.new).not_to be_valid
  end
end
