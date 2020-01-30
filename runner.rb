require './lib/games.rb'
require './lib/event.rb'

puts "Enter the year for the game"
year = gets.chomp().to_i

game = Games.new(year)

puts "Create an event"
name = gets.chomp()
puts "Great! There will be 3 participants.."
puts "Enter age for participant 1"
age1 = gets.chomp().to_i
puts "Enter age for participant 2"
age2 = gets.chomp().to_i
puts "Enter age for participant 3"
age3 = gets.chomp().to_i


event = Event.new(name, ages = [age1, age2, age3])
game.add_event(event)
puts game.headers
puts game.event_summary(event)

puts "Great! Lets create another event... enter bellow"
name2 = gets.chomp()
puts "Great! There will be 3 participants.."
puts "Enter age for participant 1"
age1 = gets.chomp().to_i
puts "Enter age for participant 2"
age2 = gets.chomp().to_i
puts "Enter age for participant 3"
age3 = gets.chomp().to_i


event2 = Event.new(name2, ages = [age1, age2, age3])
game.add_event(event2)
puts game.headers
puts game.event_summary(event)

puts "Here is the summary for all events"
puts game.summary
# puts game.all_events_summary
