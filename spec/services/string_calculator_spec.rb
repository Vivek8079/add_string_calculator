require 'rails_helper'
require_relative '../../app/services/string_calculator'

RSpec.describe StringCalculator do
  describe "#add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.new("").add).to eq(0)
    end
  end
end
