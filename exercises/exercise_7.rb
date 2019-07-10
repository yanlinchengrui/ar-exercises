require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 199)
@store1.employees.create(first_name: "Kris", last_name: "Wu", hourly_rate: 66)
@store1.employees.create(first_name: "Kaz", last_name: "Hayama", hourly_rate: 96)

@store2.employees.create(first_name: "Wutup", last_name: "Man", hourly_rate: 166)
@store2.employees.create(first_name: "Hey", last_name: "Yo", hourly_rate: 133)

# hourly_rate too high
# @emX = @store3.employees.create(first_name: "Sup", last_name: "Ney", hourly_rate: 1111)
# puts @emX.errors.messages

# check if Stores carry at least one of the men's or women's apparel
# @storeX = Store.create(name: "Maple", annual_revenue: 1, mens_apparel: false, womens_apparel: false)
# puts @storeX.errors.messages

# returns Vancouver cuz KV works in @store1 which is Vancouver
# @firstEmployeeStores = Employee.first.store.name
# puts @firstEmployeeStores

# can't pass validation @store1
# @storeY = Store.create(name: "Leaves")
# puts @storeY.errors.messages

puts "<------- GIVE ME A STORE NAME ------->"

storeName = gets.chomp
@storeX = Store.create(name: storeName)

puts "<--------------- Error -------------->"

puts @storeX.errors.messages

puts "<--------------- End ---------------->"