# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'csv'
require 'faker'

# Brands from CSV
CSV.foreach(Rails.root.join('db', 'brands.csv'), headers: true) do |row|
  brand = Brand.create(name: row['brand'], brand_code: row['brand_short'])
  if brand.save
    puts "successfully added brands "
  else
    brand.errors.full_messages.each do |error|
      puts "- #{error}"
    end
  end
end

# Categories from CSV
CSV.foreach(Rails.root.join('db', 'categories.csv'), headers: true) do |row|
  Category.create(name: row['product_type'])
end

# Products from Faker
brands = Brand.all
categories = Category.all

100.times do
  brand = brands.sample
  product = Product.new(
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price(range: 10..100)
  )
  product.brand = brand
  product.category = categories.sample
  if product.save
    puts "successfully added product"
  else
    product.errors.full_messages.each do |error|
      puts "- #{error}"
    end

  end
end

# Users from Faker
10.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email
  )
end

# Reviews from Faker
products = Product.all

200.times do
  review = Review.new(
    content: Faker::Lorem.paragraph
  )
  review.product = products.sample

  if review.save
    puts "successfully added reviews "
  else
    review.errors.full_messages.each do |error|
      puts "- #{error}"
    end

  end
end
