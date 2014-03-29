User.delete_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(name: "Carolyn Ganon", email: "cganon@gmail.com", github_url: "https://github.com/ganondalf", password: "Meredith1!", password_confirmation: "Meredith1!", picture_url: "https://i.imgur.com/LXNWAKU.jpg?1", admin: true)

user2 = User.create(name: "Phillip Lamplugh", email: "phillip.lamplugh@generalassemb.ly", github_url: "https://github.com/phlco", password: "philliplamplugh1", password_confirmation: "philliplamplugh1", picture_url: "https://i.imgur.com/2s9Tl8l.jpg?2", admin: true)

user3 = User.create(name: "Max Cantor", email: "max.cantor@generalassemb.ly", github_url: "https://github.com/mcantor", password: "maxcantor1", password_confirmation: "maxcantor1", picture_url: "https://i.imgur.com/cKPvj8B.jpg?1", admin: true)

user4 = User.create(name: "David Han", email: "david.han@generalassemb.ly", github_url: "https://github.com/davidhan527", password: "davidhan1", password_confirmation: "davidhan1", picture_url: "https://i.imgur.com/f7L243y.jpg?1", admin: true)

