# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


4.times do |u|
	a = User.create(name: "usuario #{u}", email: "#{u}@#{u}.cl")
	b = Category.create(name: "Categoria #{u}")
	c = User.last
	b.items.build(serial: 1234*u, size: 10*u, description: "Item #{u}", user_id: c.id).save
end