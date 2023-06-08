require 'date'

User.create!(email: "marco@lewagon.com", password: "123456")
User.create!(email: "ebi@lewagon.com", password: "123456")

Category.create!(name: "Chores", user_id: 1)

Day.create!(highlight: "Painting class", created_at: DateTime.parse("2023-06-01 12:00"), user_id: 1)
Day.create!(name: "Wild Rave", highlight: "Beer Pong", created_at: DateTime.parse("2023-06-02 12:00"), user_id: 1)
Day.create!(highlight: "None really", created_at: DateTime.parse("2023-06-03 12:00"), user_id: 1)
Day.create!(highlight: "Attending Bootcamp", created_at: DateTime.parse("2023-06-04 12:00"), user_id: 1)

Day.create!(name: "Su's special day", highlight: "Workout", created_at: DateTime.parse("2023-06-05 12:00"), user_id: 1)
Task.create!(description: "Be nice to Louis", priority: 1, day_id: 1)
Task.create!(description: "Laundry", day_id: 1, category_id: 1)
Task.create!(description: "Learn to code finally", day_id: 1)

Day.create!(highlight: "Redecorated my home", created_at: DateTime.parse("2023-06-06 12:00"), user_id: 1)
Day.create!(highlight: "Mowed my garden", created_at: DateTime.parse("2023-06-07 12:00"), user_id: 1)
Day.create!(highlight: "Washed my car", created_at: DateTime.parse("2023-06-08 12:00"), user_id: 1)
Day.create!(highlight: "Fed my cat", created_at: DateTime.parse("2023-06-09 12:00"), user_id: 1)

Day.create!(highlight: "Passed my last exam", created_at: DateTime.parse("2023-06-10 12:00"), user_id: 1)
Day.create!(highlight: "Won the Best Coder Award", created_at: DateTime.parse("2023-06-11 12:00"), user_id: 1)
Day.create!(highlight: "Bootcamp Champion finally!", created_at: DateTime.parse("2023-06-12 12:00"), user_id: 1)
Day.create!(highlight: "My visit to Greece", created_at: DateTime.parse("2023-06-13 12:00"), user_id: 1)

Day.create!(highlight: "Burped my cat", created_at: DateTime.parse("2023-06-14 12:00"), user_id: 1)
Day.create!(highlight: "Amazing lunch at Troy", created_at: DateTime.parse("2023-06-15 12:00"), user_id: 1)
Day.create!(highlight: "Visiting the British Museum", created_at: DateTime.parse("2023-06-16 12:00"), user_id: 1)
Day.create!(highlight: "Just coded blindfolded", created_at: DateTime.parse("2023-06-17 12:00"), user_id: 1)

Day.create!(highlight: "A day in Windsor", created_at: DateTime.parse("2023-06-18 12:00"), user_id: 1)
Day.create!(highlight: "Just applied to become a TA", created_at: DateTime.parse("2023-06-19 12:00"), user_id: 1)
Day.create!(highlight: "Look at my soup!", created_at: DateTime.parse("2023-06-20 12:00"), user_id: 1)
Day.create!(highlight: "Family is the best", created_at: DateTime.parse("2023-06-21 12:00"), user_id: 1)
