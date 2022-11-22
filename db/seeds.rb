# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


# Birky
#
region = Region.find_or_create_by(name: 'Lvivska Oblast')
city = City.find_or_create_by(name: 'Birky', region_id: region.id)

ips = %w[213.174.1.0 213.174.1.249 213.174.1.247 213.174.1.245 213.174.1.244 213.174.1.241 213.174.1.240
              213.174.1.239 213.174.1.238 213.174.1.237 213.174.1.236 213.174.1.235 213.174.1.234 213.174.1.233
              213.174.1.232 213.174.1.230 213.174.1.227 213.174.1.226 213.174.1.221 213.174.1.219 213.174.1.215
              213.174.1.211 213.174.1.208 213.174.1.206 213.174.1.202 213.174.1.189 213.174.1.185 213.174.1.184
              213.174.1.157 213.174.1.141 213.174.1.132 213.174.1.126 213.174.1.114 213.174.1.75 213.174.1.71
              213.174.1.70 213.174.1.68 213.174.1.67 213.174.1.66 213.174.1.50 213.174.1.48 213.174.1.44 213.174.1.43
              213.174.1.38 213.174.1.22 213.174.1.14 213.174.1.5 178.210.146.252 178.210.146.228 178.210.146.221
              178.210.146.189 178.210.146.187 178.210.146.172 178.210.146.133 178.210.146.116 178.210.146.113
              178.210.146.102 178.210.146.97 178.210.146.74 178.210.146.53 178.210.146.0]

ips.each do |ip|
  location = Location.find_or_create_by(ip_address: ip)
  location.update(region_id: region.id, city_id: city.id)
end
