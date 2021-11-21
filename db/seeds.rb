# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy.all
# Category.destroy.all
# Role.destroy.all

# u1 = User.create({ fullname: 'Sally Major', mobile_no: '380501234567', email: 'sally@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa' })
# u2 = User.create({ fullname: 'Sue Kostner', mobile_no: '380661111111', email: 'sue@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa' })
# u3 = User.create({ fullname: 'Kevin Spacy', mobile_no: '380672222222', email: 'kevin@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa' })
# u4 = User.create({ fullname: 'Kurt Backham', mobile_no: '380681111111', email: 'kurt@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', category_id: 1 })
# u5 = User.create({ fullname: 'Jack Nortingen', mobile_no: '380691111111', email: 'jack@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', category_id: 1 })
# u6 = User.create({ fullname: 'Eddy Murphy', mobile_no: '380700000000', email: 'eddy@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', category_id: 1 })
# u7 = User.create({ fullname: 'Jackob Wolfskin', mobile_no: '380710101010', email: 'jackob@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', category_id: 2 })
# u8 = User.create({ fullname: 'Mila Pristley', mobile_no: '380721212121', email: 'mila@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', category_id: 2 })


# c1 = Category.create(speciality: 'Therapist')
# c2 = Category.create(speciality: 'Surgeon')
# c3 = Category.create(speciality: 'Pediatrician')
# c4 = Category.create(speciality: 'Gynecologist')
# c5 = Category.create(speciality: 'Dentist')
# c6 = Category.create(speciality: 'Dermatologist')
# c7 = Category.create(speciality: 'Ophthalmologist')
# c8 = Category.create(speciality: 'Urologist')
# c9 = Category.create(speciality: 'Psychiatrist')

r1 = Role.create({ name: 'Patient', description: 'Can create and read vizits. Can read own appointments' })
r2 = Role.create({ name: 'Doctor', description: 'Can read vizits. Can create, read and update own appointments' })
r3 = Role.create({ name: 'Admin', description: 'Can perform any CRUD operation on any resource' })