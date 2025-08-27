# Create admin user
User.create!(
  email: 'admin@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  role: 'admin'
) unless User.exists?(email: 'admin@example.com')

sportswear = Category.find_or_create_by!(name: "Sportswear")
electronics = Category.find_or_create_by!(name: "Electronics")
fitness = Category.find_or_create_by!(name: "Fitness")

Product.create!([
  { name: "Running Shoes", description: "Lightweight running shoes.", price: 79.99, stock: 50, category: sportswear },
  { name: "Smart Watch", description: "Stay connected with this sleek smartwatch.", price: 199.99, stock: 20, category: electronics },
  { name: "Yoga Mat", description: "Non-slip yoga mat for all levels.", price: 29.99, stock: 100, category: fitness }
])
