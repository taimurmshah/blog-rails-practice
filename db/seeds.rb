# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

user = User.create(name: "Taimur Shah", email: "taimurmshah@gmail.com", password: "grapes101")

post = Post.create(title: "Test Post", text: "Yo, here is the sample text", user_id: user.id)

photo = Photo.create(title: "Boy eats steak", description: "A photo of a boy eating a steak.", url: "imgur.com/steak", user_id: user.id)

comment1 = Comment.create(text: "This is a comment on a blog post.", user_id: user.id, commentable_id: post.id, commentable_type: "Post")
comment2 = Comment.create(text: "this is a comment on a photo", user_id: user.id, commentable_id: photo.id, commentable_type: "Photo")


