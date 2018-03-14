require_relative 'lib/things_collection'

things_collection = ThingsCollection.new("./data/*.txt")

puts "Какая температура за окном?"
t = STDIN.gets.to_i

things_for_temperature = things_collection.for_temperature(t)
puts "Рекомендую такую одежду:"
puts things_for_temperature
