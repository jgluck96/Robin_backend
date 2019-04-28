# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: 'Josh Gluck', email: 'joshgluck1@gmail.com', mobile: 5612127533, password:'pass', location:'new york', age:22)
User.create(name: 'Jordan Gluck', email: 'jgluck777@gmail.com', mobile: 9545932111, password:'pass', location:'new york', age:24)
User.create(name: 'rich Gluck', email: 'rgluck@gmail.com', mobile: 5612513271, password:'pass', location:'new york', age:52)

Item.create(title: 'speaker', description: 'small speaker', location: 'ny', category: 'indoors', value: 100, rental_price: 15)
Item.create(title: 'bike', description: 'big bike', location: 'nj', category: 'sports', value: 300, rental_price: 28)
Item.create(title: 'skateboard', description: 'fast skateboard', location: 'nj', category: 'sports', value: 200, rental_price: 18)
Item.create(title: 'skateboard', description: 'fast skateboard', location: 'nj', category: 'sports', value: 200, rental_price: 18)
Item.create(title: 'skateboard', description: 'fast skateboard', location: 'nj', category: 'sports', value: 200, rental_price: 18)

# OwnItem.create(user_id: 13, item_id: 14)
# OwnItem.create(user_id: 13, item_id: 15)
# OwnItem.create(user_id: 14, item_id: 13)
#
# Rental.create(user_id: 13, item_id: 13, date_start: '4/25/2019', date_end: '4/26/2019', days_rented: 1, subtotal: 15, service_fee: 1.5, total_price: 16.5)
# Rental.create(user_id: 14, item_id: 14, date_start: '4/25/2019', date_end: '4/27/2019', days_rented: 2, subtotal: 56, service_fee: 2.8, total_price: 58.8)
# Rental.create(user_id: 15, item_id: 15, date_start: '4/25/2019', date_end: '4/28/2019', days_rented: 3, subtotal: 36, service_fee: 1.8, total_price: 37.8)
