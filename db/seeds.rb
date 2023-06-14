require 'date'
require "open-uri"

puts "cleaning up seeds"
Task.destroy_all
Category.destroy_all
Day.destroy_all
User.destroy_all
puts "seeds cleaned"

marco = User.create!(email: "marco@lewagon.com", password: "123456")

Category.create!(name: "Chores", user_id: marco.id)

# test_image = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
# day = Day.create!(created_at: DateTime.parse("2023-05-19 12:00"), user_id: marco.id)
# day.highlight.attach(io: test_image, filename: "nes.png", content_type: "image/png")

# test_image = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
# day2 = Day.create!(created_at: DateTime.parse("2023-05-20 12:00"), user_id: marco.id)
# day2.highlight.attach(io: test_image, filename: "nes.png", content_type: "image/png")

# Day.create!(name: "Wild Rave", highlight: "Beer Pong", created_at: DateTime.parse("2023-05-20 12:00"), day_date: DateTime.parse("2023-05-20 12:00").strftime("%A %e %B %Y"), user: marco)
# Day.create!(highlight: "None really", created_at: DateTime.parse("2023-05-21 12:00"), day_date: DateTime.parse("2023-05-21 12:00").strftime("%A %e %B %Y"), user: marco)
# Day.create!(highlight: "Attending Bootcamp", created_at: DateTime.parse("2023-05-22 12:00"), day_date: DateTime.parse("2023-05-22 12:00").strftime("%A %e %B %Y"), user: marco)

# su = Day.create!(name: "Su's special day", highlight: "Workout", created_at: DateTime.parse("2023-05-23 12:00"), day_date: DateTime.parse("2023-05-23 12:00").strftime("%A %e %B %Y"), user: marco)
# Task.create!(description: "Be nice to Louis", priority: 1, day: su)
# Task.create!(description: "Laundry", day: su, category: Category.first)
# Task.create!(description: "Learn to code finally", day: su)

# Day.create!(highlight: "Redecorated my home", created_at: DateTime.parse("2023-05-24 12:00"), day_date: DateTime.parse("2023-05-24 12:00").strftime("%A %e %B %Y"), user: marco)
# Day.create!(highlight: "Mowed my garden", created_at: DateTime.parse("2023-05-25 12:00"), day_date: DateTime.parse("2023-05-25 12:00").strftime("%A %e %B %Y"), user: marco)
# Day.create!(highlight: "Washed my car", created_at: DateTime.parse("2023-05-26 12:00"), day_date: DateTime.parse("2023-05-26 12:00").strftime("%A %e %B %Y"), user: marco)
# Day.create!(highlight: "Fed my cat", created_at: DateTime.parse("2023-05-27 12:00"), day_date: DateTime.parse("2023-05-27 12:00").strftime("%A %e %B %Y"), user: marco)

# Day.create!(highlight: "Passed my last exam", created_at: DateTime.parse("2023-05-28 12:00"), day_date: DateTime.parse("2023-05-28 12:00").strftime("%A %e %B %Y"), user: marco)
# Day.create!(highlight: "Won the Best Coder Award", created_at: DateTime.parse("2023-05-29 12:00"), day_date: DateTime.parse("2023-05-29 12:00").strftime("%A %e %B %Y"), user: marco)
# Day.create!(highlight: "Bootcamp Champion finally!", created_at: DateTime.parse("2023-05-30 12:00"), day_date: DateTime.parse("2023-05-30 12:00").strftime("%A %e %B %Y"), user: marco)
# Day.create!(highlight: "My visit to Greece", created_at: DateTime.parse("2023-05-31 12:00"), day_date: DateTime.parse("2023-05-31 12:00").strftime("%A %e %B %Y"), user: marco)

# Day.create!(highlight: "Burped my cat", created_at: DateTime.parse("2023-06-01 12:00"), day_date: DateTime.parse("2023-06-01 12:00").strftime("%A %e %B %Y"), user: marco)
# Day.create!(highlight: "Amazing lunch at Troy", created_at: DateTime.parse("2023-06-02 12:00"), day_date: DateTime.parse("2023-06-02 12:00").strftime("%A %e %B %Y"), user: marco)
# Day.create!(highlight: "Visiting the British Museum", created_at: DateTime.parse("2023-06-03 12:00"), day_date: DateTime.parse("2023-06-03 12:00").strftime("%A %e %B %Y"), user: marco)
# Day.create!(highlight: "Just coded blindfolded", created_at: DateTime.parse("2023-06-04 12:00"), day_date: DateTime.parse("2023-06-04 12:00").strftime("%A %e %B %Y"), user: marco)

# Day.create!(highlight: "A day in Windsor", created_at: DateTime.parse("2023-06-05 12:00"), day_date: DateTime.parse("2023-06-05 12:00").strftime("%A %e %B %Y"), user: marco)
# Day.create!(highlight: "Just applied to become a TA", created_at: DateTime.parse("2023-06-06 12:00"), day_date: DateTime.parse("2023-06-06 12:00").strftime("%A %e %B %Y"), user: marco)
# Day.create!(highlight: "Look at my soup!", created_at: DateTime.parse("2023-06-07 12:00"), day_date: DateTime.parse("2023-06-07 12:00").strftime("%A %e %B %Y"), user: marco)
# Day.create!(highlight: "Family is the best", created_at: DateTime.parse("2023-06-08 12:00"), day_date: DateTime.parse("2023-06-08 12:00").strftime("%A %e %B %Y"), user: marco)
