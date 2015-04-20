# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# clean all data's
User.delete_all; Product.delete_all; Promotion.delete_all; Bank.delete_all;


users = User.create([
    {first_name: "Untung", last_name: "Surapati", email: 'untung@gmail.com'}, 
    {first_name: "Jean", last_name: "Jacob", email: 'jjacob@yahoo.com'}
  ])
  
product = Product.create([
    { name: 'Handphone', quantity: 3 , description: "Desc A", price: 200000 },
    { name: 'Jacket', quantity: 5 , description: "Desc B" , price: 145000},
    { name: 'T-Shirt', quantity: 7 , description: "Desc C" , price: 75000 },
    { name: 'Teapot', quantity: 10 , description: "Desc D", price: 110000 },
    { name: 'Towel', quantity: 2 , description: "Desc E", price: 85000 }
  ])
  
promotion = Promotion.create([
    { name: 'New Year', discount: '10%', expired_at: (DateTime.now+7.day)},
    { name: 'Chinese Year', discount: '5%', expired_at: (DateTime.now+10.day)},
    { name: 'Ramadhan', discount: '15%', expired_at: (DateTime.now+20.day)}
    
  ])
  

bank = Bank.create([
    { name: 'Permata Bank', address: 'South Jakarta' , user: users[0]},
    { name: 'BCA', address: 'West Jakarta' , user: users[0]},
    { name: 'Danamon Bank', address: 'Central Jakarta', user: users[1]}
  ])