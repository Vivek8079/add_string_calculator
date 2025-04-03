require 'rails_helper'
require_relative '../../lib/string_calculator_kata'

RSpec.describe StringCalculatorKata do
  describe "#add" do
    it "returns 0 for an empty string" do
      expect(StringCalculatorKata.new("").add).to eq(0)
    end

    it "returns the number itself" do
      expect(StringCalculatorKata.new("7").add).to eq(7)
    end
  end
end
