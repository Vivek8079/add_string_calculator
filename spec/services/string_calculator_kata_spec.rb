require 'rails_helper'
require_relative '../../lib/string_calculator_kata'

RSpec.describe StringCalculatorKata do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculatorKata.new('').add).to eq(0)
    end

    it 'returns the number itself' do
      expect(StringCalculatorKata.new('1').add).to eq(1)
    end

    it 'returns the sum of two numbers' do
      expect(StringCalculatorKata.new('1,1').add).to eq(2)
    end

    it 'handle , and new line delimiters' do
      expect(StringCalculatorKata.new("1\n2,4").add).to eq(7)
    end

    it "handle different delimiters" do
      expect(StringCalculatorKata.new("//;\n4;5").add).to eq(9)
    end

    it "raises an error when negative numbers are present" do
      expect { StringCalculatorKata.new("-2,3,-4,5").add }
        .to raise_error("Negatives not allowed: -2, -4")
    end

  end
end
