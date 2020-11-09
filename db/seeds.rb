# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Solutions

puts "Cleaning Database..."

Solution.delete_all

puts "Creating solutions:"

solution_one = Solution.new(name: 'neuro-selfie™')
solution_one.save!
solution_two = Solution.new(name: 'teamup∞™ 180°')
solution_two.save!
solution_three = Solution.new(name: 'teamup∞™ 360°')
solution_three.save!
solution_four = Solution.new(name: 'teamup∞™ for teams')
solution_four.save!
solution_five = Solution.new(name: 'Workshop series')
solution_five.save!

puts 'Done'
