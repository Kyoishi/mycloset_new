# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "csv"

outfits_csv = CSV.readlines("db/outfits.csv")
outfits_csv.shift
outfits_csv.each do |row|
  Outfit.create(brand: row[1], category_id: row[6],user_id: row[3], year: row[4], price: row[5])

end