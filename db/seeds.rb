# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


City.destroy_all
User.destroy_all

City.create!(
  name: "Paris",
  lat: 48.866667,
  long: 2.333333,
  picture: "https://cdn.sortiraparis.com/images/80/83517/753564-visuel-paris-tour-eiffel-rue.jpg",
  overall: 3.43,
  activities: 4,
  cost: 4483,
  works_places: 5,
  healthcare: 5,
  internet: 24,
  safety: 2.5,
  french_speaking: true
);

10.times do |t|
  user = User.create!(
    email: "a#{t}@yopmail.com",
    password: '123456'
  );
end

user = User.create!(
  email: "admin@yopmail.com",
  password: 'adminpassword',
  admin: true
);
