module Raindrops
  RAINDROPS = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }

  def convert(number)
    converted = prime_factors(number).uniq.map { |n| RAINDROPS[n] }.compact
    converted.empty? ? number.to_s : converted.join
  end

  def prime_factors(number, by = 2)
    return [by] if by >= number

    if number % by == 0
      [by] + prime_factors(number / by, by)
    else
      prime_factors(number, by + 1)
    end
  end

  module_function :convert, :prime_factors
end
