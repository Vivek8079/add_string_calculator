class StringCalculatorKata
  def initialize(input)
    @input = input
  end

  def add
    return 0 if @input.empty?
    @input.split(/,|\n/).map(&:to_i).sum
  end
end
