require 'rails_helper'

RSpec.describe Merchant, type: :model do
  it "is valid with empty attributes" do
    expect(Merchant.new).not_to be_valid
  end
end
