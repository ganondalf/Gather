User.delete_all
Week.delete_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(name: "Carolyn Ganon", email: "cganon@gmail.com", github_handle: "ganondalf", password: "Meredith1!", password_confirmation: "Meredith1!", picture_url: "https://i.imgur.com/LXNWAKU.jpg?1", admin: true)

user2 = User.create(name: "Phillip Lamplugh", email: "phillip.lamplugh@generalassemb.ly", github_handle: "phlco", password: "philliplamplugh1", password_confirmation: "philliplamplugh1", picture_url: "https://i.imgur.com/2s9Tl8l.jpg?2", admin: true)

user3 = User.create(name: "Max Cantor", email: "max.cantor@generalassemb.ly", github_handle: "mcantor", password: "maxcantor1", password_confirmation: "maxcantor1", picture_url: "https://i.imgur.com/cKPvj8B.jpg?1", admin: true)

user4 = User.create(name: "David Han", email: "david.han@generalassemb.ly", github_handle: "davidhan527", password: "davidhan1", password_confirmation: "davidhan1", picture_url: "https://i.imgur.com/f7L243y.jpg?1", admin: true)

week1 = Week.create(name: 1)
week2 = Week.create(name: 2)
week3 = Week.create(name: 3)
week4 = Week.create(name: 4)
week5 = Week.create(name: 5)
week6 = Week.create(name: 6)
week7 = Week.create(name: 7)
week8 = Week.create(name: 8)
week9 = Week.create(name: 9)
week10 = Week.create(name: 10)
week11 = Week.create(name: 11)
week12 = Week.create(name: 12)


