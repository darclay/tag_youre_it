# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@julia = User.create(first_name: 'Julia', last_name: 'Dwyer', email: 'juliadwyer93@gmail.com', password_digest: 'password', location: 'Providence, RI', birthday: 'September 29, 1993', flag_count: 0, is_restricted: false, is_admin: true)

julias_posts = Post.create([{ subject: 'Yard Sale', content: "Hey all! We're having a street wide yard sale on Sunday May 15th on Green Street from 9am to 3pm. All are welcome to join!", flag_count: 0, user_id: @julia.id }], { subject: 'Lawn Mower to Borrow', content: "Hi Neighbors. Our lawn mower crapped out on us this week and we're having a birthday party this weekend we'd love to mow the lawn for. Does anyone have a mower we could borrow?? Thank you! Will provide birthday cake in return ;)", flag_count: 0, user_id: @julia.id })

julias_comments = Comment.create([{ content: 'I can help with this! Feel free to DM me :)', flag_count: 0, user_id: @julia.id, post_id: 'TBD'}, { content: 'You stink!!!!', flag_count: 6, user_id: @julia.id, post_id: 'TBD'}])

@tags = Tag.create([{ name: 'Yard Sale'}, { name: 'Painting'}, { name: 'Pets'}, { name: 'Gardening'}, { name: 'Borrow'}])
