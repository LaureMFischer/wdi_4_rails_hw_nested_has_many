User.create(name: 'Laure', email: 'laure@gmail.com')
User.create(name: 'Joe', email: 'joe@gmail.com')
User.create(name: 'Bill', email: 'bill@gmail.com')
User.create(name: 'Allison', email: 'allison@gmail.com')
User.create(name: 'Angela', email: 'angela@gmail.com')

Article.create(body: 'This is an article...it is cool.', title: 'Cool Article', user_id: 1)
Article.create(body: 'This is another boring article.', title: 'Boring Article', user_id: 2)
Article.create(body: 'This is a fun article.', title: 'Fun Article', user_id: 3)
Article.create(body: 'Here is my article.', title: 'My Article', user_id: 4)
Article.create(body: 'This is one more article with nothing really in it.', title: 'Empty Article', user_id: 5)

Comment.create(body: 'I agree, this was cool.', article_id: 1)
Comment.create(body: 'I agree, this was boring.', article_id: 2)
Comment.create(body: 'I agree, this was fun.', article_id: 3)
Comment.create(body: 'I did not care for this article but respect the effort.', article_id: 4)
Comment.create(body: 'I don\'t understand why you would publish an empty article.', article_id: 5)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
