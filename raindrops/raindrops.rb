class Fixnum
  def divisible_by?(number)
    self % number == 0
  end
end

module Raindrops
  RAINDROPS = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }

  def self.convert(number)
    raindrops_of(number) || number.to_s
  end

  def self.raindrops_of(number)
    RAINDROPS.inject(nil) do |transform, (factor, raindrop_of_factor)|
      if number.divisible_by?(factor)
        "#{transform}#{raindrop_of_factor}"
      else
        transform
      end
    end
  end
end
