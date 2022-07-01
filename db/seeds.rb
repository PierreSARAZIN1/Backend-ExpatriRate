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
  picture: "https://www.marseille-tourisme.com/app/uploads/marseille-tourisme/2021/12/thumbs/vieux-port-grande-roue-vue-aerienne-noel-joomtcm-7-1920x1440.jpg",
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
  name: "Bordeaux",
  lat: 44.837789,
  long: -0.57918,
  picture: "https://www.domitys.fr/storage/media/11610/bordeaux_01.jpg",
  overall: 3.45,
  activities: 3,
  cost: 2974,
  works_places: 5,
  healthcare: 4.8,
  internet: 24,
  safety: 4,
  french_speaking: true,
  country_id: Country.find_by(name: "France").id
);

City.create!(
  name: "Lyon",
  lat: 45.764043,
  long: 4.835659,
  picture: "https://media.lesechos.com/api/v1/images/view/614442d98fe56f656148bf27/1280x720/0611653626226-web-tete.jpg",
  overall: 3.22,
  activities: 4.4,
  cost: 3014,
  works_places: 5,
  healthcare: 4,
  internet: 24,
  safety: 4,
  french_speaking: true,
  country_id: Country.find_by(name: "France").id
);

# UK

Country.create!(
  name: "United Kingdom"
)

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
  name: "Manchester",
  lat: 53.4807593,
  long: -2.2426305,
  picture: "https://handluggageonly.co.uk/wp-content/uploads/2019/07/Hand-Luggage-Only-21-1.jpg",
  overall: 2.95,
  activities: 3,
  cost: 4344,
  works_places: 2.5,
  healthcare: 4,
  internet: 58,
  safety: 4,
  french_speaking: false,
  country_id: Country.find_by(name: "United Kingdom").id
);

City.create!(
  name: "Brighton",
  lat: 50.82253,
  long: -0.137163,
  picture: "https://www.visitbritain.com/sites/default/files/styles/wysiwyg_image/public/consumer/listicles/brighton_pier_2_gettyimages.jpg",
  overall: 2.95,
  activities: 3,
  cost: 5353,
  works_places: 5,
  healthcare: 4,
  internet: 18,
  safety: 4,
  french_speaking: false,
  country_id: Country.find_by(name: "United Kingdom").id
);

Country.create!(
  name: "Germany"
)

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
  name: "Frankfurt",
  lat: 50.1109221,
  long: 8.6821267,
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Skyline_Frankfurt_am_Main.jpg/800px-Skyline_Frankfurt_am_Main.jpg",
  overall: 3.31,
  activities: 4,
  cost: 3076,
  works_places: 5,
  healthcare: 5,
  internet: 15,
  safety: 4,
  french_speaking: false,
  country_id: Country.find_by(name: "Germany").id
);

Country.create!(
  name: "South Korea"
)

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
  name: "Gwangju",
  lat: 	35.166668,
  long: 126.916664,
  picture: "https://img.12go.co/0/fit/1024/0/ce/1/plain/s3://12go-web-static/static/images/upload-media/5031.jpeg",
  overall: 3.28,
  activities: 2.8,
  cost: 1732,
  works_places: 5,
  healthcare: 4,
  internet: 28,
  safety: 4,
  french_speaking: false,
  country_id: Country.find_by(name: "South Korea").id
);

# 

Country.create!(
  name: "Singapore"
)

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
  country_id: Country.find_by(name: "Singapore").id
);


Country.create!(
  name: "Thailand"
)

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
  name: "Bangkok",
  lat: 	13.736717,
  long: 100.523186,
  picture: "https://cdn.getyourguide.com/img/location/5ad4fc7b6e848.jpeg/99.jpg",
  overall: 4.35,
  activities: 4,
  cost: 1268,
  works_places: 5,
  healthcare: 5,
  internet: 25,
  safety: 4,
  french_speaking: false,
  country_id: Country.find_by(name: "Thailand").id
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

Country.create!(
  name: "United State"
)

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
  name: "New York",
  lat: 	40.712784,
  long: -74.005941,
  picture: "https://pany-1b446.kxcdn.com/wp-content/uploads/2019/05/times-square-new-york.jpg",
  overall: 3.98,
  activities: 5,
  cost: 5660,
  works_places: 5,
  healthcare: 5,
  internet: 34,
  safety: 4,
  french_speaking: false,
  country_id: Country.find_by(name: "United State").id
);

City.create!(
  name: "Los Angeles",
  lat: 	34.003342,
  long: -118.485832,
  picture: "https://www.esl.fr/sites/default/files/styles/image_gallery/public/city/esl-languages-usa-los-angeles-hero.jpg",
  overall: 3.77,
  activities: 5,
  cost: 4849,
  works_places: 5,
  healthcare: 5,
  internet: 66,
  safety: 2.5,
  french_speaking: false,
  country_id: Country.find_by(name: "United State").id
);

Country.create!(
  name: "Poland"
)

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
  name: "Katowice",
  lat: 	50.270908,
  long: 19.039993,
  picture: "https://img.theculturetrip.com/450x/smart/images/56-3703440-katowice.jpg", #
  overall: 3.39,
  activities: 3,
  cost: 1924,
  works_places: 5,
  healthcare: 4.8,
  internet: 19,
  safety: 2.5,
  french_speaking: false,
  country_id: Country.find_by(name: "Poland").id
);


Country.create!(
  name: "Canada"
)

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
  name: "Montreal",
  lat: 	45.5016889,
  long: -73.567256,
  picture: "https://www.houston-macdougal.com/wp-content/uploads/2018/10/montreal-centre-ville-1024x576.jpg",
  overall: 4,
  activities: 4,
  cost: 3775,
  works_places: 5,
  healthcare: 4.9,
  internet: 16,
  safety: 2.3,
  french_speaking: true,
  country_id: Country.find_by(name: "Canada").id
);

City.create!(
  name: "Toronto",
  lat: 	43.651070,
  long: -79.347015,
  picture: "https://i0.wp.com/tiqets-cdn.s3.eu-west-1.amazonaws.com/wordpress/blog/wp-content/uploads/2020/10/21114307/Toronto-Canada.jpg",
  overall: 4.1,
  activities: 4,
  cost: 3685,
  works_places: 5,
  healthcare: 5,
  internet: 19,
  safety: 2.5,
  french_speaking: false,
  country_id: Country.find_by(name: "Canada").id
);

Country.create!(
  name: "Japan"
)

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

City.create!(
  name: "Osaka",
  lat: 	34.690469,
  long: 135.511293,
  picture: "https://www.agoda.com/wp-content/uploads/2018/10/City-guides_Osaka_best-time-to-go_Osaka-Castle-Park_Nishinomaru-Garden.jpg",
  overall: 3.38,
  activities: 3,
  cost: 2099,
  works_places: 5,
  healthcare: 4.8,
  internet: 24,
  safety: 4,
  french_speaking: false,
  country_id: Country.find_by(name: "Japan").id
);

Country.create!(
  name: "Marocco"
)

City.create!(
  name: "Marrakech",
  lat: 	31.630000,
  long: -8.008889,
  picture: "https://www.ou-et-quand.net/partir/images/illustration/marrakech_707.jpg",
  overall: 3.26,
  activities: 5,
  cost: 1822,
  works_places: 5,
  healthcare: 4,
  internet: 5,
  safety: 4,
  french_speaking: true,
  country_id: Country.find_by(name: "Marocco").id
);

City.create!(
  name: "Rabat",
  lat: 	33.9715904,
  long: -6.8498129,
  picture: "https://www.voyages-d-affaires.com/wp-content/uploads/2018/04/maroc-rabat-casbah-oudaias.jpg",
  overall: 3.1,
  activities: 4,
  cost: 2039,
  works_places: 5,
  healthcare: 2,
  internet: 7,
  safety: 4,
  french_speaking: true,
  country_id: Country.find_by(name: "Marocco").id
);

Country.create!(
  name: "Spain"
)

City.create!(
  name: "Barcelona",
  lat: 	41.390205,
  long: 2.154007,
  picture: "https://barcelonesite.fr/images/barcelona_2.jpg",
  overall: 3.77,
  activities: 5,
  cost: 3580,
  works_places: 5,
  healthcare: 4.9,
  internet: 35,
  safety: 2.5,
  french_speaking: false,
  country_id: Country.find_by(name: "Spain").id
);

City.create!(
  name: "Madrid",
  lat: 	40.416775,
  long: -3.703790,
  picture: "https://www.okvoyage.com/wp-content/uploads/2020/11/madrid-quartiers-ville.jpeg",
  overall: 4.03,
  activities: 5,
  cost: 2996,
  works_places: 5,
  healthcare: 4.9,
  internet: 35,
  safety: 4,
  french_speaking: false,
  country_id: Country.find_by(name: "Spain").id
);

Country.create!(
  name: "Mexico"
)

City.create!(
  name: "Mexico City",
  lat: 	19.432608,
  long: -99.133209,
  picture: "https://images.musement.com/cover/0002/99/mexico-city-xl-jpg_header-198157.jpeg",
  overall: 4.12,
  activities: 4,
  cost: 1538,
  works_places: 5,
  healthcare: 3,
  internet: 11,
  safety: 2.3,
  french_speaking: false,
  country_id: Country.find_by(name: "Mexico").id
);

Country.create!(
  name: "Brazil"
)

City.create!(
  name: "Brasilia",
  lat: 	-15.7942287,
  long: -47.8821658,
  picture: "https://www.bresil-alacarte.com/app/media/8/files/2016/06/cathedrale-metropolitaine-brasilia.jpg",
  overall: 3.25,
  activities: 3,
  cost: 1266,
  works_places: 5,
  healthcare: 4,
  internet: 7,
  safety: 2,
  french_speaking: false,
  country_id: Country.find_by(name: "Brazil").id
);

City.create!(
  name: "Rio De Janeiro",
  lat: 	-22.908333,
  long: -43.196388,
  picture: "https://a.cdn-hotels.com/gdcs/production143/d357/42fb6908-dcd5-4edb-9f8c-76208494af80.jpg",
  overall: 3.8,
  activities: 5,
  cost: 1638,
  works_places: 5,
  healthcare: 4,
  internet: 4,
  safety: 2,
  french_speaking: false,
  country_id: Country.find_by(name: "Brazil").id
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
