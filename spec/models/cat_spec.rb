require 'rails_helper'

RSpec.describe Cat, type: :model do
  it "should validate name, age, enjoys" do
      cat = Cat.create
      expect(cat.errors[:name]).to_not be_empty
      expect(cat.errors[:age]).to_not be_empty
      expect(cat.errors[:enjoys]).to_not be_empty
  end
end
