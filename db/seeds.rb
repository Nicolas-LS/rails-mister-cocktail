require 'open-uri'
require 'json'

url = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list')
json = JSON.parse(url.read)
json['drinks'].each do |ingredient|
  ingredient = Ingredient.new(name: ingredient["strIngredient1"])
  ingredient.save
  puts 'Creating ingredient'
end

puts 'Finished'

# Coctkail.destroy_all
# puts "creating cocktails"

10.times do
  new_cocktail = Cocktail.create!(
    name: Faker::FunnyName.name)
  puts "Cocktail created"
end

