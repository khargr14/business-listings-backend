# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Business.destroy_all
Contacted.destroy_all

business = Business.create(name: 'ABC STORE', number: '123-456-7891', email: 'ABC@DER.COM', industry: 'Entertainment')
contacted = Contacted.create(name: 'ABCddd STORE', number: '987-456-7891', email: 'AB8C@DER.COM', date: DateTime.now, message: 'some message', business_id: business.id)