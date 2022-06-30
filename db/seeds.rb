# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


City.destroy_all
User.destroy_all
Country.destroy_all

Country.create!(
  name: "France"
)

Country.create!(
  name: "United Kingdom"
)

Country.create!(
  name: "Germany"
)

Country.create!(
  name: "South Korea"
)

Country.create!(
  name: "Malaysia"
)

Country.create!(
  name: "Thailand"
)

Country.create!(
  name: "United State"
)

Country.create!(
  name: "Poland"
)

Country.create!(
  name: "Canada"
)

Country.create!(
  name: "Japan"
)

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
  french_speaking: true,
  country_id: Country.find_by(name: "France").id
);

City.create!(
  name: "Marseille",
  lat: 43.296398,
  long: 5.370000,
  picture: File.open(Rails.root.join('public', 'images', 'marseille.jpeg')),
  overall: 2.96,
  activities: 3,
  cost: 3333,
  works_places: 5,
  healthcare: 5,
  internet: 24,
  safety: 2.5,
  french_speaking: true,
  country_id: Country.find_by(name: "France").id
);

City.create!(
  name: "London",
  lat: 51.509093,
  long: -0.094151,
  picture: "https://www.ou-et-quand.net/partir/images/illustration/londres_830.jpg",
  overall: 3.63,
  activities: 5,
  cost: 5093,
  works_places: 5,
  healthcare: 5,
  internet: 14,
  safety: 4,
  french_speaking: true,
  country_id: Country.find_by(name: "United Kingdom").id
);

City.create!(
  name: "Berlin",
  lat: 52.520007,
  long: 13.404954,
  picture: "https://www.visitberlin.de/system/files/image/og_image.jpg",
  overall: 3.92,
  activities: 5,
  cost: 4106,
  works_places: 5,
  healthcare: 5,
  internet: 19,
  safety: 4,
  french_speaking: false,
  country_id: Country.find_by(name: "Germany").id
);

City.create!(
  name: "Seoul",
  lat: 	37.566535,
  long: 126.9779692,
  picture: "https://content.r9cdn.net/rimg/dimg/c1/f7/06109851-ctry-132-171a795d569.jpg",
  overall: 4.68,
  activities: 4,
  cost: 2095,
  works_places: 5,
  healthcare: 5,
  internet: 23,
  safety: 4,
  french_speaking: false,
  country_id: Country.find_by(name: "South Korea").id
);

City.create!(
  name: "Singapore",
  lat: 	1.290270,
  long: 103.851959,
  picture: "https://www.deptagency.com/wp-content/uploads/2021/12/Singapore.png",
  overall: 4.24,
  activities: 4,
  cost: 3761,
  works_places: 5,
  healthcare: 5,
  internet: 102,
  safety: 4,
  french_speaking: false,
  country_id: Country.find_by(name: "Malaysia").id
);

City.create!(
  name: "Chiang Mai",
  lat: 	18.796143,
  long: 98.979263,
  picture: "https://content.r9cdn.net/rimg/dimg/d4/8f/83729f7e-city-6042-162deff357a.jpg",
  overall: 4.48,
  activities: 4,
  cost: 942,
  works_places: 5,
  healthcare: 5,
  internet: 24,
  safety: 4,
  french_speaking: false,
  country_id: Country.find_by(name: "Thailand").id
);

City.create!(
  name: "Miami",
  lat: 	25.7616798,
  long: -80.1917902,
  picture: "https://www.barnes-miami.com/wp-content/uploads/2021/03/MG_6_1_Miami.jpg",
  overall: 4.55,
  activities: 5,
  cost: 5281,
  works_places: 5,
  healthcare: 5,
  internet: 43,
  safety: 2.5,
  french_speaking: false,
  country_id: Country.find_by(name: "United State").id
);

City.create!(
  name: "Warsaw",
  lat: 	52.237049,
  long: 21.017532,
  picture: "https://s.inyourpocket.com/gallery/warsaw/2020/01/Warsaw%20skyscrapers%20at%20night.jpg",
  overall: 4.49,
  activities: 5,
  cost: 1777,
  works_places: 5,
  healthcare: 4,
  internet: 16,
  safety: 2.5,
  french_speaking: false,
  country_id: Country.find_by(name: "Poland").id
);

City.create!(
  name: "Quebec City",
  lat: 	46.813878,
  long: -71.207981,
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Ch%C3%A2teau_Frontenac%2C_Quebec_city%2C_Canada.jpg/1200px-Ch%C3%A2teau_Frontenac%2C_Quebec_city%2C_Canada.jpg",
  overall: 3.56,
  activities: 3.5,
  cost: 2702,
  works_places: 5,
  healthcare: 4.5,
  internet: 17,
  safety: 2.5,
  french_speaking: true,
  country_id: Country.find_by(name: "Canada").id
);

City.create!(
  name: "Phuket",
  lat: 	7.880448,
  long: 98.392250,
  picture: "https://www.asiaqua.com/wp-content/uploads/2018/12/plongee-a-la-journee-phuket-koh-phiphi-asiaqua.jpg",
  overall: 4.31,
  activities: 4,
  cost: 1212,
  works_places: 5,
  healthcare: 4,
  internet: 24,
  safety: 4,
  french_speaking: false,
  country_id: Country.find_by(name: "Thailand").id
);

City.create!(
  name: "Tokyo",
  lat: 	35.709026,
  long: 139.731992,
  picture: "https://mediaguinee.org/wp-content/uploads/2020/09/tokyo.jpg",
  overall: 3.88,
  activities: 5,
  cost: 2922,
  works_places: 5,
  healthcare: 5,
  internet: 27,
  safety: 4,
  french_speaking: false,
  country_id: Country.find_by(name: "Japan").id
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

favorite = JoinTableFavoriteCity.create!(
  user_id: User.all.sample.id,
  city_id: City.all.sample.id
)
