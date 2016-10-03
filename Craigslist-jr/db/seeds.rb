# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

c = Category.create!(name: "Furniture for Sale")
a = Article.create!(title:"Red sofa", content: "Moving out of town and need to get rid of this very comfy sofa. Pet/Smoke/Bed-bug -free home. $250", category_id: c.id, key: SecureRandom.hex(4))
b= Article.create!(title:"Dining Table", content: "Square wood table. Seats 4 comfortably. Minor scratches $300.", category_id: c.id, key: SecureRandom.hex(4))
d = Article.create!(title:"Round Glass Coffee Table", content: "glass top. from ikea $150.", category_id: c.id, key: SecureRandom.hex(4))

c = Category.create!(name: "Apartments for Rent")
a = Article.create!(title:"1BR in Chelsea, $1800/month", content: "Two elevators in building. 1 BR, 1 Bath, Open kitchen and dining area.", category_id: c.id, key: SecureRandom.hex(4))
