require 'rspec'
require_relative '../calculator'

RSpec.describe Calculator do
  let(:calculator) { Calculator.new }

  describe "#add" do
    it "empty string should return zero" do
      expect(calculator.add("")).to eq(0)
    end

    it "add two numbers in a string separated by comma" do
      expect(calculator.add("1,5")).to eq(6)
    end

    it "should handle new lines" do
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    it "should support different delimiters" do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end
  end
end
