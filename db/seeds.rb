# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([{
  f_name: "Timothy",
  l_name: "Willis",
  username: "PaTTyDaDDy",
  email_address: "t@w.com",
  password: "pattydaddy",
  password_confirmation: "pattydaddy",
  profile_pic_url: "https://igcdn-photos-f-a.akamaihd.net/hphotos-ak-xta1/t51.2885-15/e15/11326706_827476667307389_876295447_n.jpg",
  bio: "Just your average guy with an above average appetite"
},
{
  f_name: "Elise",
  l_name: "Peters",
  username: "elisepolice",
  email_address: "e@p.com",
  password: "elisepolice",
  password_confirmation: "elisepolice",
  profile_pic_url: "https://scontent-mia1-1.xx.fbcdn.net/hphotos-xtp1/v/t1.0-9/12072628_10154356605621393_1578786483002191644_n.jpg?oh=ba7b1fde80c82f0045eb227580e84ae5&oe=56B68914",
  bio: "I don't mess around"
}])

Post.create([{
  image_url: "https://scontent-mia1-1.cdninstagram.com/hphotos-xpf1/t51.2885-15/e15/10593335_717732261595907_1646552082_n.jpg",
  caption: "recovery food",
  rating: 4,
  restaurant: "Bonnie's Grill",
  location: "New York City",
  user_id: 1,
},
{
  image_url: "https://scontent-atl3-1.cdninstagram.com/hphotos-xfa1/t51.2885-15/e35/11950509_654119184731099_2077928457_n.jpg",
  caption: "danny meyer is king",
  rating: 3,
  restaurant: "Shake Shack",
  location: "New York City",
  user_id: 2,
},
{
  image_url: "https://scontent-mia1-1.cdninstagram.com/hphotos-xpa1/t51.2885-15/e15/1389214_515380595272224_130520143_n.jpg",
  caption: "birthday burger",
  rating: 4,
  restaurant: "The Vanderbilt",
  location: "New York City",
  user_id: 1,
}])
