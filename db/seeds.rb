# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_a = User.create!(email: "abert@newtech.com", password: "123456")
user_b = User.create!(email: "lovebert@nstarkent.com", password: "123456")
user_c = User.create!(email: "hopmenow@nawesometech.com", password: "123456")
user_d = User.create!(email: "newbody@techmesoon.com", password: "123456")

genius_a = Genius.new(name: "Albert", year: 1980, cost: 1500)
genius_a.user = user_a
genius_a.save
genius_b = Genius.new(name: "Hopkins", year: 1700, cost: 3500)
genius_b.user = user_b
genius_b.save
genius_c = Genius.new(name: "Lovelace", year: 1600, cost: 500)
genius_c.user = user_c
genius_c.save
genius_d = Genius.new(name: "Newton", year: 1500, cost: 2500)
genius_d.user = user_d
genius_d.save

Lecture.create(start_time: "2019-08-21 11:00:00", end_time: "2019-08-22 12:00:00", genius_id: genius_a.id, user_id: user_a.id)
# lecture_a.save
Lecture.create(start_time: "2019-08-21 11:00:00", end_time: "2019-08-22 12:00:00", genius_id: genius_b.id, user_id: user_b.id)
# lecture_b.save
Lecture.create(start_time: "2019-08-21 11:00:00", end_time: "2019-08-22 12:00:00", genius_id: genius_c.id, user_id: user_c.id)
# lecture_c.save
Lecture.create(start_time: "2019-08-21 11:00:00", end_time: "2019-08-22 12:00:00", genius_id: genius_d.id, user_id: user_d.id)
# lecture_d.save

