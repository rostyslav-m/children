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

#Product.create!(title: "Sherlock Holmes", description: "Sherlock Holmes by Arthur Conan Doyle. Here, in one volume, are all four full-length novels and fifty-six short stories about the colourful adventures of Sherlock Holmes. It contains every word Sir Arthur Conan Doyle ever wrote about Baker Street's most famous resident.", category_id: 1)
#Product.create!(title: "Fifty Sheds of Grey", description: "'Hurt me!' she begged, raising her skirt as she bent over the workbench. 'Very well,' I replied, 'You've got fat ankles and no dress sense.' Colin Grey's life was happy and simple until the day everything changed - the day his wife read THAT book. ", category_id: 1)
#Product.create!(title: "Pippi Longstocking", description: "Pippi Longstocking (Swedish Pippi Långstrump) is the protagonist in the Pippi Longstocking series of children's books by Swedish author Astrid Lindgren. Pippi was named by Lindgren's then nine-year-old daughter, Karin, who requested a get-well story from her mother one day when she was home sick from school. Nine-year-old Pippi is unconventional, assertive, and has superhuman strength, being able to lift her horse one-handed. She is playful and unpredictable. She frequently makes fun of unreasonable adult attitudes, especially when displayed by pompous and condescending adults. Pippi's anger is reserved for the most extreme cases, such as when a man ill-treats her horse. Like Peter Pan, Pippi does not want to grow up. She is the daughter of a buccaneer captain and as such has adventurous stories to tell. She has four best friends: two animals (her horse and monkey) and two humans (the neighbor's children Tommy and Annika).", category_id: 1)

#Review.create!(msg: "is it interesting?", product_id: 1, user_id: 2)
#Review.create!(msg: "O! yes it is very interesting1", product_id: 1, user_id: 1)
#Review.create!(msg: "it is super! Tanks", product_id: 2, user_id: 2)

