# HEROKU PRODUCTION LINK (main branch)

https://backend-expatrirate.herokuapp.com

# FRONTEND REACT

site internet : https://www.expatrirate.cf
Github : https://github.com/PierreSARAZIN1/Frontend-ExpatriRate 

# ENDPOINTS
## USERS

### Register
POST on /users with payload :
```json
{
  "user": {
    "email": "",
    "password": ""
  }
}
```

### Login
POST on /users/sign_in  with payload :
```json
{
  "user": {
    "email": "",
    "password": ""
  }
}
```

### Logout
DELETE on /users/sign_out with Auth

### Show connected User
GET on /member-data with Auth

### Delete User account
DELETE on /users with auth

## COUNTRIES

### List all Countries
GET on /countries 

### Show a Country
GET on /countries/:id 

### Create a Country
POST on /countries with auth and payload : 
```json
{
  "country": {
      "name": ""
  }
}
```

### Update a Country
PATCH on /countries/:id with auth and payload :
```json
{
  "city": {
      "name": ""
  }
}
```

### Delete a Country
DELETE on /countries/:id with auth 

## CITIES

### List all Cities
GET on /cities 

### Show a City
GET on /cities/:id 

### Create a Post
POST on /cities with auth and payload : 
```json
{
  "city": {
      "name": "",
      "lat": "",
      "long": "",
      "picture": "",
      "overall": "",
      "activities": "",
      "cost": "",
      "works_places": "",
      "healthcare": "",
      "internet": "",
      "safety": "",
      "french_speaking": "",
      "country_id": ""
  }
}
```

### Update a City
PATCH on /cities/:id with auth and payload :
```json
{
  "city": {
      "name": "",
      "lat": "",
      "long": "",
      "picture": "",
      "overall": "",
      "activities": "",
      "cost": "",
      "works_places": "",
      "healthcare": "",
      "internet": "",
      "safety": "",
      "french_speaking": "",
      "country_id": ""
  }
}
```

### Delete a City
DELETE on /cities/:id with auth 

## LIKES

### List all Likes
GET on /join_table_favorite_cities 

### Show a Like
GET on /join_table_favorite_cities/:id 

### Create a Like
POST on /join_table_favorite_cities with auth and payload : 
```json
{
  "join_table_favorite_cities": {
      "city_id": "",
      "user_id": "",
  }
}
```

### Delete a Like
DELETE on /join_table_favorite_cities/:id with auth 


