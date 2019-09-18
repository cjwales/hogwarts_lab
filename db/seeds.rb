require_relative('../models/student')

student1 = Student.new({
  'first_name' => 'hermione',
  'last_name' => 'granger',
  'house' => 'gryffindor',
  'age' => 12 })
student2 = Student.new({
  'first_name' => 'owen',
  'last_name' => 'cauldwell',
  'house' => 'ravenclaw',
  'age' => 13 })
student3 = Student.new({
  'first_name' => 'roger',
  'last_name' => 'davies',
  'house' => 'hufflepuff',
  'age' => 14 })
student4 = Student.new({
  'first_name' => 'severus',
  'last_name' => 'snape',
  'house' => 'slytherin',
  'age' => 37 })

student1.save
student2.save
student3.save
student4.save
