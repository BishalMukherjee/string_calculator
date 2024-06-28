require 'rspec'
require_relative '../calculator'

RSpec.describe Calculator do
  let(:calculator) { Calculator.new }

  describe "#add" do
    it "empty string should return zero" do
      expect(calculator.add("")).to eq(0)
    end

    it "add two numbers in a string separated by comma" do
      expect(calculator.add("1,2")).to eq(3)
    end
  end
end
