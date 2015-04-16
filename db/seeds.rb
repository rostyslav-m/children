# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.create!(email: "admin@shop.ros", password: "freedom123", is_admin: true,  name: "Admin")
#User.create!(email: "guest@shop.ros", password: "123345678",  is_admin: false, name: "Guest")

Gender.create!(name_gender: "унисекс")
Gender.create!(name_gender: "для мальчика")
Gender.create!(name_gender: "для девочки")


Category.create!(name_cat: "не определена")
Category.create!(name_cat: "верхняя одежда")
Category.create!(name_cat: "летняя одежда")
Category.create!(name_cat: "игрушки")