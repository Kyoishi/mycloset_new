# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "csv"

days_csv = CSV.readlines("db/days_view.csv")
days_csv.shift
days_csv.each do |row|
  Day.create(date: row[3])

end

require "csv"

categories_csv = CSV.readlines("db/categories_view.csv")
categories_csv.shift
categories_csv.each do |row|
  Category.create(name: row[1], parent_id: row[2], display: row[3], level: row[6] )

end