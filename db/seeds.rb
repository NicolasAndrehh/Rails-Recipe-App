user = User.create(name: "John", email: "john@gmail.com", password: "123456", password_confirmation: "123456")

first_food = Food.create(name: "Apple", user_id: user.id, measurement_unit: "grams", price: 10, quantity: 1)
second_food = Food.create(name: "Banana", user_id: user.id, measurement_unit: "grams", price: 20, quantity: 1)
third_food = Food.create(name: "Orange", user_id: user.id, measurement_unit: "grams", price: 30, quantity: 1)