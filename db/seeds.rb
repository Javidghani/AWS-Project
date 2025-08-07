# Create admin user
User.create!(
  email: 'admin@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  role: 'admin'
) unless User.exists?(email: 'admin@example.com')

# Create categories
sportswear = Category.find_or_create_by!(name: "Sportswear")
equipment = Category.find_or_create_by!(name: "Fitness Equipment")

# Add products to categories
Product.create!(
  name: "Running Shoes",
  description: "Comfortable and durable running shoes.",
  price: 59.99,
  stock: 100,
  category: sportswear
)

Product.create!(
  name: "Yoga Mat",
  description: "High-density yoga mat for better balance and comfort.",
  price: 25.00,
  stock: 50,
  category: equipment
)

Product.create!(
  name: "Dumbbells Set",
  description: "Adjustable dumbbell set, perfect for strength training.",
  price: 79.99,
  stock: 30,
  category: equipment
)

Product.create!(
  name: "Fitness T-Shirt",
  description: "Moisture-wicking athletic t-shirt.",
  price: 19.99,
  stock: 200,
  category: sportswear
)
# Only update the Product section (below existing categories)

Product.create!(
  name: "Training Shorts",
  description: "Breathable shorts for workouts.",
  price: 29.99,
  stock: 80,
  category: sportswear
)

Product.create!(
  name: "Resistance Bands",
  description: "Set of 5 resistance bands for strength training.",
  price: 14.99,
  stock: 100,
  category: equipment
)

Product.create!(
  name: "Treadmill",
  description: "High-performance treadmill with digital display.",
  price: 599.99,
  stock: 10,
  category: equipment
)

Product.create!(
  name: "Sports Cap",
  description: "Adjustable sports cap with ventilation.",
  price: 9.99,
  stock: 150,
  category: sportswear
)

Product.create!(
  name: "Foam Roller",
  description: "Ideal for muscle recovery and massage.",
  price: 22.99,
  stock: 60,
  category: equipment
)
