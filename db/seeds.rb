require_relative('../models/student.rb')
require_relative('../models/house.rb')

house1 = House.new({
  'name' => 'Gryffindor'
  })

  house2 = House.new({
    'name' => 'Ravenclaw'
    })
    house3 = House.new({
      'name' => 'Hufflepuff'
      })
      house4 = House.new({
        'name' => 'Slytherin'
        })

        house1.save()
        house2.save()
        house3.save()
        house4.save()

student1 = Student.new({
  'first_name' => 'hermione',
  'last_name' => 'granger',
  'house_id' => house1.id,
  'age' => 12 })
student2 = Student.new({
  'first_name' => 'owen',
  'last_name' => 'cauldwell',
  'house_id' => house2.id,
  'age' => 13 })
student3 = Student.new({
  'first_name' => 'roger',
  'last_name' => 'davies',
  'house_id' => house3.id,
  'age' => 14 })
student4 = Student.new({
  'first_name' => 'severus',
  'last_name' => 'snape',
  'house_id' => house4.id,
  'age' => 37 })

student1.save
student2.save
student3.save
student4.save
