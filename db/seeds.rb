# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Resource.create(name: 'Aula Tablets')
Resource.create(name: 'Biblioteca')
Resource.create(name: 'Camara de fotos')
Role.create(role: 'admin')
Role.create(role: 'user')
Role.create(role: 'headmasters')
Urgency.create(level: 'pendiente')
Urgency.create(level: 'resuelta')
User.create(email: 'foo@bar.com', password: 'narantic', role_id: 0)
User.create(email: 'admin@bar.com', password: 'narantic', role_id: 1)
User.create(email: 'head@master.com', password: 'narantic', role_id: 2)

