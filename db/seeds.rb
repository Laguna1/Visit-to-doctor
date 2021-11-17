# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy.all 
u1 = User.create({ fullname: 'Sally Major', mobile_no: '380501234567', email: 'sally@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa' })
u2 = User.create({ fullname: 'Sue Kostner', mobile_no: '380661111111', email: 'sue@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa' })
u3 = User.create({ fullname: 'Kevin Spacy', mobile_no: '380672222222', email: 'kevin@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa' })
u4 = User.create({ fullname: 'Jack Nortingen', mobile_no: '380733333333', email: 'jack@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa' })