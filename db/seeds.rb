# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Resource.create(id: 1, name: 'Aula Tablets')
Resource.create(id: 2, name: 'Biblioteca')
Resource.create(id: 3, name: 'Camara de fotos')
Role.create(id: 1, role: 'admin')
Role.create(id: 2, role: 'user')
Role.create(id: 3, role: 'headmasters')
Urgency.create(id: 1, level: 'pendiente')
Urgency.create(id: 2, level: 'resuelta')
User.create(id: 1, email: 'foo@bar.com', password: 'narantic', role_id: 2)
User.create(id: 2, email: 'admin@bar.com', password: 'narantic', role_id: 1)
User.create(id: 3, email: 'head@master.com', password: 'narantic', role_id: 3)

