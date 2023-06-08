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
