class StringCalculatorKata
  def initialize(input)
    @input = input
  end

  def add
    return 0 if @input.empty?
    @input.to_i
  end
end
