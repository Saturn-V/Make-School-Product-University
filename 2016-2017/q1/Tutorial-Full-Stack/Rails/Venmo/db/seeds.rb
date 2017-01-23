# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all

if Rails.env == "development"
    User.create(handle:"Development User", email:"developmentUser@example.com", balance:100.00)
end

if Rails.env == "staging"
    User.create(handle:"Staging User", email:"stagingUser@example.com", balance:100.00)
end

# User.create(handle:"Carlooos", email:"carlosIsC00l31@carlitosMail.com", balance:100000000.00)
# User.create(handle:"Alex", email:"normal@carlitosMail.com", balance:1.00)
# User.create(handle:"Andy", email:"iLikeRails@carlitosMail.com", balance:900000000)
# User.create(handle:"Jeremy", email:"iFoundedMakeSchool@carlitosMail.com", balance:999999999)

names = ["Tahra", "Dactyl", "Harry", "Potter", "Filet", "Minion", "Bacon", "Git", "Hub", "Face", "Book", "Insta", "Gram", "Rolando", "Benfer", "Yee", "Delp", "Shayna", "Dusty", "Milo"]
emails = ["@gmail.com", "@yahoo.com", "@krispy.com", "@makeschool.com", "@carlos.com", "@alex.com"]

for i in 0..21 do
    name = names.sample + " " + names.sample
    email = name.sub(' ', "") + emails.sample

    User.create(handle: name, email: email, balance: Random.rand(50000000) + 5000)
end
