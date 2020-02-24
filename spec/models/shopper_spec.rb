require 'rails_helper'

RSpec.describe Shopper, type: :model do
  it "is not valid with empty attributes" do
    expect(Shopper.new).not_to be_valid
  end
end
