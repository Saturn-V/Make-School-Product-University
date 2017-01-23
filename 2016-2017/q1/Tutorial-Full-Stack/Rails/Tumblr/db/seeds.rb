# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

paul = User.create({ first_name: 'Paul', last_name: 'Newton', user_name: 'paulnewton', email: 'paulnewton@me.com' });
alex = User.create({ first_name: 'Alex', last_name: 'Pena', user_name: 'alexpena', email: 'alexpena@me.com' });

paulPost = Post.create({ title: 'Dis boy', body: 'new number who dis? Dis Dat Boy fam.', user_id: paul });
alexPost = Post.create({ title: 'My first article.', body: 'new number who dis?', user_id: alex });
