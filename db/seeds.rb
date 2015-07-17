User.create(username: "john", password: "hello12", email: "hessjohnt@gmail.com")
User.create(username: "nick", password: "hello12", email: "nick@gmail.com")
User.create(username: "john", password: "hello12", email: "char@gmail.com")

Survey.create(name: "fuckall", author_id: 1)
Survey.create(name: "reeses", author_id: 2)
Survey.create(name: "peeses", author_id: 3)

UserSurvey.create(taker_id: 1, survey_id: 2)
UserSurvey.create(taker_id: 2, survey_id: 3)
UserSurvey.create(taker_id: 3, survey_id: 3)
