User.create(username: "john", first_name: "John", last_name: "Hess", password: "hello12", email: "hessjohnt@gmail.com")
User.create(username: "nick", first_name: "Nicholas", last_name: "Toulouse", password: "hello12", email: "nick@gmail.com")
User.create(username: "charlotte", first_name: "Charlotte", last_name: "Manetta", password: "123", email: "char@gmail.com")
User.create(username: "danny", first_name: "Daniel", last_name: "Shafer", password: "123", email: "char@gmail.com")

Survey.create(name: "All about shoes", author_id: 1, expiration: Date.parse("2015-07-18"))
Survey.create(name: "DBC feedback survey", author_id: 2, expiration: Date.parse("2015-07-18"))
Survey.create(name: "Another survey thats not about shoes", author_id: 3, expiration: Date.parse("2015-07-18"))

UserSurvey.create(taker_id: 1, survey_id: 2)
UserSurvey.create(taker_id: 2, survey_id: 3)
UserSurvey.create(taker_id: 3, survey_id: 3)


Question.create(text: "Do you like nikes?", survey_id: 1)
Question.create(text: "Do you like asics?", survey_id: 1)
Question.create(text: "Do you like adidas?", survey_id: 1)
Question.create(text: "Do you like brooks?", survey_id: 1)
Question.create(text: "Do you like nb?", survey_id: 1)
Question.create(text: "Do you like puma?", survey_id: 1)

Choice.create(question_id: 1, text: "Yes")
Choice.create(question_id: 1, text: "No")

Question.create(text: "Do you standup?", survey_id: 2)
Question.create(text: "Do you like EE?", survey_id: 2)
Question.create(text: "Do you like boot badges?", survey_id: 2)
Question.create(text: "Do you like algorithm night?", survey_id: 2)
Question.create(text: "Do you like game night?", survey_id: 2)
Question.create(text: "Do you like check in?", survey_id: 2)

Choice.create(question_id: 2, text: "Yes")
Choice.create(question_id: 2, text: "No")

