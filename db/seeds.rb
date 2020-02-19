# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:  'chinese',
    phone_number:       ' 5345456356'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:  'italian',
    phone_number:       ' + 4346454'
  },
  {
    name:         'Pasta West',
    address:      '23 SBlah High St, London ER$6PQ',
    category:  'italian',
    phone_number:       ' + 4345534346454'
  },
  {
    name:         'French baguette',
    address:      '5336A Small St, London DD5Q',
    category:  'italian',
    phone_number:       ' + 434623243454'
  },
  {
    name:         'Sushi Yumm',
    address:      '76 Brah Av, London 5GDS',
    category:  'italian',
    phone_number:       ' + 434643454'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
