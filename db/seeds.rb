# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "csv"

companies_csv = CSV.readlines("db/users_view.csv")
companies_csv.shift
companies_csv.each do |row|
  Company.create(id: row[1], email: row[2], encrypted_password: row[3])
end