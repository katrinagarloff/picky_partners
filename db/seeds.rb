
qt_1 = Question.create(content: "If you were playing in the World Cup--are you the player passing the ball or making the goals?")

qt_2 = Question.create(content: "You’ve been late to work every other day this week and now today, your train is running 10 minutes late. Do you:")

qt_3 = Question.create(content: "You’re having a party, and your friend asks you to put out a bag of chips for the guests. Do you:")

qt_4 = Question.create(content: "When entering a restaurant, you’re the one:")

qt_5 = Question.create(content: "You have an interview for your dream job. You feel:")

qt_6 = Question.create(content: "You’re at a party and it’s kind of lame, do you:")


Answer.create(content: "Making the goals.", question_id: qt_1.id, category: "C")
Answer.create(content: "Passing the ball.", question_id: qt_1.id, category: "C")

Answer.create(content: "Tell everyone within earshot how irritated you are with MTA.", question_id: qt_2.id, category: "S")
Answer.create(content: "Wait patiently and continue bopping along to your favorite song.", question_id: qt_2.id, category: "S")

Answer.create(content: "Hold the chip bag and eat directly from it.", question_id: qt_3.id, category: "C")
Answer.create(content: "Put the chips in the party bowl.", question_id: qt_3.id, category: "C")

Answer.create(content: "Telling the host how many people are in your party.", question_id: qt_4.id, category: "L")
Answer.create(content: "Hanging back until the rest of your friends get through the door.", question_id: qt_4.id, category: "L")

Answer.create(content: "Freaked out! So much at stake.", question_id: qt_5.id, category: "S")
Answer.create(content: "You’ve been waiting for this kind of opportunity.", question_id: qt_5.id, category: "S")

Answer.create(content: "Find a new party to go and text your friends the new location.", question_id: qt_6.id, category: "L")
Answer.create(content: "Wait until your friend is ready to go.", question_id: qt_6.id, category: "L")

# User.create(name: "odd questions 1", username: "k_odd", password_digest: "1" )
# User.create(name: "even questions 1", username: "k_even", password_digest: "1")
# User.create(name: "odd questions 2", username: "t_odd", password_digest: "1")
# User.create(name: "even questions 2", username: "t_even", password_digest: "1")
# User.create(name: "first 4 odd, last 2 even", username: "odd_mix", password_digest: "1")
# User.create(name: "first 4 even, last 2 odd", username: "even_mix", password_digest: "1")
