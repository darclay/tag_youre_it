# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# -----------------USER-------------------------------------------Not seeing the user ID
@david = User.create!(
  first_name: "SuperDave",
  last_name: "Blade",
  email: "blade@blade.com",
  password: "123456",
  location: {street: "123 Main Street", city: "New York", state: "NY", zipcode: "12345"},
  birthday: "1980-01-01" ,
  profile_pic: "https://i.imgur.com/m1d3In5.png",
  details: {},
  flag_count: 21,
  is_restricted: false,
  is_admin: true
)

@paige = User.create!(
  first_name: "Paige", 
  last_name: "Hoeppner", 
  email: "paigeypoo92@att.net", 
  password: "123456", 
  location: {street: "4240 W Irving Park Rd", city: "Chicago", state: "IL", zip: "60641"}, 
  birthday: "1995-05-04", 
  profile_pic: "https://images.unsplash.com/photo-1542740348-39501cd6e2b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2787&q=80", 
  details: {}, 
  flag_count: 0, 
  is_restricted: false, 
  is_admin: true
)

@johnny = User.create!(
  first_name: "Johnny",
  last_name: "Domingo",
  email: "johnnykdomingo@gmail.com",
  password: "123456",
  location: {street: "1900 Poinsett Hwy", city: "Greenville", state: "SC", zip: "29690"},
  birthday: "1996-07-10",
  profile_pic: "https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  details: {},
  flag_count: 0,
  is_restricted: false,
  is_admin: true
)

@julia = User.create!(
  first_name: "Julia",
  last_name: "Dwyer",
  email: "juliadwyer93@gmail.com",
  password: "123456",
  location: {street: "8 Puncatest Neck Rd", city: "Tiverton", state: "RI", zip: "02878"},
  birthday: "1993-09-29",
  profile_pic: "https://i.imgur.com/CfuyAtJ.png"
  details: {},
  flag_count: 0,
  is_restricted: false,
  is_admin: true
)

# ----------------------POSTS----------------------------------------
@postph1 = Post.create!(
  subject: "Trash cleanup",
  content: "Who wants to meet up on Wednesday at Koz Park to pick up trash in the area?",
  images: [
    {
      url: "https://images.unsplash.com/photo-1652257975269-e431aa2bdc45?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80",
      caption: "this is a cool pic"
    }
  ],
  flag_count: 0,
  user: @paige
)

@postdg1 = Post.create!(
  subject: "Gardeners Needed",
  content: "I hurt my back last week swimming with sharks and now I am bed ridden.  I hate to ask, but if someone could come and cut my grass and pull a couple of weeds I would really appreciate it.",
  images: [
    {
      url: "https://i.imgur.com/w1TcT7q.png",
      caption: "test caption"
    },
    {
      url: "https://i.imgur.com/ABaJirA.png"
# THIS IS EMPTY ON PURPOSE TO SEE IF THIS WILL POPULATE AN EMPTY STRING IF NOTHING IS ENTERED.
    }
  ],
  flag_count: 0,
  user: @david
)

@postjd1 = Post.create!(
  subject: "Help! I've fallen and can't get up!",
  content: "The subject says it all... I've taken a spill getting out of the shower and unable to maintain my lawn. If anyone can help me out with a quick mow and water, please let me know. I have a fairly small lawn so it shouldn't take more than an hour of your time.",
  images: [],
  flag_count: 0, 
  user: @johnny
)

@postjd2 = Post.create!(
  subject: "Need Help Moving", 
  content: "I am moving out of the area and was wondering if there is anyone willing to help with lifting furniture. I have about one week left on my lease so anytime in the next few days works for me. Send me a message if you can! Thanks.",
  images: [],
  flag_count: 0,
  user: @johnny
)

@postjg1 = Post.create!(
  subject: "Yard Sale",
  content: "Hey all! We're having a street wide yard sale on Sunday May 15th on Green Street from 9am to 3pm. All are welcome to join!",
  images: [],
  flag_count: 0,
  user: @julia
)

@postjg2 = Post.create!(
  subject: "Lawn Mower to Borrow",
  content: "Hi Neighbors. Our lawn mower crapped out on us this week and we're having a birthday party this weekend we'd love to mow the lawn for. Does anyone have a mower we could borrow?? Thank you! Will provide birthday cake in return ;)",
  images: [],
  flag_count: 0,
  user: @julia
)

# ----------------------COMMENTS----------------------------------------
Comment.create!(
  [
    {
      content: "I would love to help",
      images: [],
      flag_count: 0,
      user: @paige,
      post: @postjg2
    },
    {
      content: "Love this idea!",
      images: [],
      flag_count: 0,
      user: @paige,
      post: @postjd2
    }, 
    {
      content: "I can help with this! Feel free to DM me :)",
      images: []
      flag_count: 0,
      user: @julia,
      post: @postjd2
    },
    {
      content: "You stink!!!!",
      images: ["https://image.shutterstock.com/image-photo/grandmother-flipping-people-off-600w-585619952.jpg"],
      flag_count: 6,
      user: @julia,
      post: @postdg1
    },
    {
      content: "I am not sure I will be able to help.  The work seems a little overwhelming.",
      images: [],
      flag_count: 0,
      user: @david,
      post: @postjg2
    },
    {
      content: "Oh I got this.  The work is now done.",
      images: [],
      flag_count: 0,
      user: @david,
      post: @postph1
    },
    {
      content:  "I would love to help you with this. Message sent.",
      images: [],
      flag_count: 0,
      user: @johnny,
      post: @postdg1
    },
    {
      content: "Are you getting rid of the groovy couch?",
# THIS IS LEFT BLANK FOR TESTING TOO.
      flag_count: 0,
      user: @johnny,
      post: @postph1
    }
  ]

# -------------------TAGS-------------------------------------
Tag.create!(
  [
    {name: "Yard Sale"},
    { name: "Painting"},
    { name: "Pets"},
    { name: "Gardening"},
    { name: "Borrow"}
  ]
)