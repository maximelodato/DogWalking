# db/seeds.rb

# Effacer les données existantes
Stroll.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all

# Créer des villes
paris = City.create(city_name: "Paris")
lyon = City.create(city_name: "Lyon")
marseille = City.create(city_name: "Marseille")

# Créer des dogsitters
dogsitter1 = Dogsitter.create(name: "Alice", city: paris)
dogsitter2 = Dogsitter.create(name: "Bob", city: lyon)
dogsitter3 = Dogsitter.create(name: "Charlie", city: marseille)

# Créer des chiens
dog1 = Dog.create(name: "Rex", city: paris)
dog2 = Dog.create(name: "Fido", city: lyon)
dog3 = Dog.create(name: "Buddy", city: marseille)

# Créer des promenades (strolls)
Stroll.create(dogsitter: dogsitter1, dog: dog1)
Stroll.create(dogsitter: dogsitter2, dog: dog2)
Stroll.create(dogsitter: dogsitter3, dog: dog3)

puts "Seed data created successfully!"
