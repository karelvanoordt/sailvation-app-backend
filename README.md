# Final-capstone-backend

An api with end points to create/view/delete/update Reservations for cruise trips.

# Live link for API

 [Click Me!](https://vacayhome-api.herokuapp.com/api-docs/index.html)

## Frontend Repository:

[sailvation-app-frontend](https://github.com/karelvanoordt/sailvation-app-frontend)

## Built With

- Ruby version 3.1.1
- RoR version 7
## Getting Started

## Kanban Board
[Click here to see the Kanban Board](https://github.com/karelvanoordt/sailvation-app-backend/projects/1)


The API will receive POST requests to create Cruises and Reservations and GET requests to view Users, Cruises and Reservations.
The base URL is: https://pacific-lake-89990.herokuapp.com/api/v1/

If you want to view Users you can call this endpoint:

/api/v1/users

To do the same but with cruises call this endpoint:

/api/v1/users/id/cruises

Both endpoints will return a JSON response with the following format:

```
For Users:
{
  "id":1,
  "name":"Karel",
  "email":"karel@karel.com",
  "created_at":"2022-04-05T13:13:11.814Z",
  "updated_at":"2022-04-05T13:13:11.814Z"
}

For Cruises:
{
  "id":1,
  "name":"Titanic",
  "created_at":"2022-04-06T17:37:29.310Z",
  "updated_at":"2022-04-06T17:37:29.310Z",
  "user_id":1,
  "description": "The unsinkable"
}


**If you need further information about the endpoints you can view the documentation navigating to `/api-docs`.
Or you can just click this [link](https://pacific-lake-89990.herokuapp.com/api-docs/index.html)**

If you prefer to clone the project locally, you can also get to the docs by navigating to http://`domain`:`port`/api-docs. Where `domain` is the domain of your server and `port` is the port of your server.
For example, if your server is running on port 3000, you can navigate to http://localhost:3000/api-docs.
There you will see a list of all endpoints and their descriptions.

**The project comes shipped with linters config for ruby, so ensure you have Rubocop installed in your local environment**

- **Ensure you have postgresql, nodejs, ruby and rails set up on your machine**

- **To get a local copy of the repository please run the following commands on your terminal:**
`$ git clone https://github.com/karelvanoordt/sailvation-app-backend.git`


- **$ run `bundle install` to couple all dependacies in gem files**


- **$ run `rails s` to start rails server**

- **$ browse `http://<domain>:<port>/api-docs` to view swagger api documentations and test end points**
## Database creation

Run rails db:create db:migrate db:seed



## Kanban Board

The Kanban Board for both front-end and back-end of the project can me accessed [Here](https://github.com/karelvanoordt/sailvation-app-backend/projects/1)


## Authors

Our team is composed of:
👤 **Hamid Murambiwa** 
- GitHub: [@hamid-murambiwa](https://github.com/hamid-murambiwa)
- Twitter: [@Hamid87789454](https://twitter.com/Hamid87789454) 
- LinkedIn: [Hamid Murambiwa](https://www.linkedin.com/in/hamid-murambiwa-8a9a9520a//)

👤 **Orçun Uğur**

- GitHub: [@shoirata](https://github.com/shoirata)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/shoira-tashpulatova-bab4a7122/)

👤 **Karel van Oordt**

- GitHub: [@karelvanoordt](https://github.com/karelvanoordt)
- Twitter: [@karelvanoordt](https://twitter.com/karelvanoordt) 
- LinkedIn: [Karel van Oordt](https://www.linkedin.com/in/karelvanoordt/)



## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Murat Korkmaz](https://www.behance.net/muratk) for the awesome [design](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign) for our front-end.
## 📝 License
