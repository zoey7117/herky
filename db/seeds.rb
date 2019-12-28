# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Building.destroy_all
Apartment.destroy_all
User.destroy_all

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
b1 = Building.create(name: 'Lenox Hill', elevator: true, num_floors: 6, address: '201 e 73rd, nyc', pets: 'Cats only')
b2 = Building.create(name: '88 Lex', elevator: true, num_floors: 12, address: '88 lex, nyc', pets: 'Dogs and Cats')
b3 = Building.create(name: 'the Crib', elevator: false, num_floors: 5, address: '29 w 27th, nyc', pets: 'No Pets')
b4 = Building.create(name: 'Cabrini', elevator: true, num_floors: 6, address: '360 Cabrini, nyc', pets: "All are welcome")
b5 = Building.create(name: 'the Chelsea', elevator: true, num_floors: 5, address: '22 w 25th, nyc',pets: 'Dogs and Cats')



a1 = Apartment.create(apt_num: '2h', size: 600, num_rooms: 3, num_windows: 6, building_id: 1)
a2 = Apartment.create(apt_num: '3b', size: 500, num_rooms: 2, num_windows: 2, building_id: 2)
a3 = Apartment.create(apt_num: 'mh', size: 800, num_rooms: 3, num_windows: 8, building_id: 3)
a4 = Apartment.create(apt_num: '3e', size: 1200, num_rooms: 5, num_windows: 10, building_id: 4)
a5 = Apartment.create(apt_num: '4a', size: 300, num_rooms: 2, num_windows: 6, building_id: 5)
a6 = Apartment.create(apt_num: '50a', size: 2000, num_rooms: 7, num_windows: 15, building_id: 1)
a7 = Apartment.create(apt_num: '33g', size: 700, num_rooms: 3, num_windows: 7, building_id: 3)
a8 = Apartment.create(apt_num: '71k', size: 600, num_rooms: 3, num_windows: 5, building_id: 5)
a9 = Apartment.create(apt_num: '7c', size: 500, num_rooms: 2, num_windows: 2, building_id: 2)


User.create(id: 1, name: 'lola', email: 'lola@gmail.com', password: 'password', admin: true)
User.create(id: 3, name: 'tookie', email: 'tookie@gmail.com',password: 'password', admin: true)
User.create(id: 4, name: 'admin', email: 'admin@gmail.com',password: 'admin', admin: true)
