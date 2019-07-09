require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1 = Store.first
@store2 = Store.second
@store3 = Store.third

@em1 = @store1.employees.create()
puts @em1.errors.messages
@em2 = @store1.employees.create()
puts @em2.errors.messages
@em3 = @store1.employees.create()
puts @em3.errors.messages

@em4 = @store2.employees.create()
puts @em4.errors.messages
@em5 = @store2.employees.create()
puts @em5.errors.messages
