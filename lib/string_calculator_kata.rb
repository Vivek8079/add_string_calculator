class StringCalculatorKata
  def initialize(input)
    @input = input
  end

  def add
    return 0 if @input.empty?

    delimiter = /,|\n/

    if @input.start_with?("//")
      delimiter_section, @input = @input.split("\n", 2)
      delimiter = extract_delimiters(delimiter_section)
    end

    numbers = @input.split(delimiter).map(&:to_i)

    negative_numbers = numbers.find_all(&:negative?)

    raise "Negatives not allowed: #{negative_numbers.join(', ')}" unless negative_numbers.blank?

    numbers.reject{ |number| number > 1000 }.sum
  end

  private

  def extract_delimiters(section)
    regexp = section.match(/^\/\/(.+)/)
    delimiters = regexp[1]

    if delimiters.start_with?("[")
      delimiters.scan(/\[([^\]]+)\]/).flatten.map { |d| Regexp.escape(d) }.join("|")
    else
      Regexp.escape(delimiters[0])
    end
  end
end
