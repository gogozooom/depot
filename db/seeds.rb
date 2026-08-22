# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create! name: 'admin', email_address: 'admin@user.org', password: 'admin' # DON'T DO THIS FR! It's just that "EDITOR='code --wait' bin/rails credentials:edit" doesn't want to freaking work...