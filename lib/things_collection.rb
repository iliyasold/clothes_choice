require_relative 'thing'

# Класс подбирает вещи под погоду из гардероба
class ThingsCollection

  def initialize(path)
    files = Dir.glob("#{path}")
    @things = []

    files.each do |file|
      @thing = Thing.from_file("#{file}")
      @things << @thing
    end
  end

  def for_temperature(t)
    @things.select { |clothes| clothes.check_temperature?(t) }
  end
end
