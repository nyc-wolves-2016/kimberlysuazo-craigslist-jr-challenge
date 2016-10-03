# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
c = Category.create!(name: "Furniture for Sale")
a = Article.create!(title:"Red sofa", content: "Moving out of town and need to get rid of this very comfy sofa. Pet/Smoke/Bed-bug -free home. $250", category_id: c.id, key: SecureRandom.hex(4))
