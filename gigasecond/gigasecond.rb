class Gigasecond
  VERSION = 1

  def self.from(birthdate)
    Time.at((10 ** 9) + birthdate.to_i)
  end
end