# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

<<<<<<< HEAD
children = Child.create([{ name: 'Laura Bunn' }, { name: 'Zoila Rodriguez' }])
=======
Parent.delete_all

Parent.create!(:name => "Sam Burt", :address => "25 Brettwood Rd", :phone => "617 784 0617", :email => "sburt@gmail.com")
Parent.create!(:name => "John Peterson", :address => "25 Brettwood Rd", :phone => "617 784 0617", :email => "sburt@gmail.com")
>>>>>>> c0b0e1bf219a4e692154999b8fc1103fe1db9c92
