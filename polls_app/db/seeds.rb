# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do 
  User.destroy_all

  sam = User.create!(username: 'Sam')
  brent = User.create!(username: 'Brent')
  bob = User.create!(username: 'Bob')
  jade = User.create!(username: 'Jade')

  Poll.destroy_all

  candy = Poll.create!(title: "Candy", author_id: sam.id)
  veggies = Poll.create!(title: "Veggies", author_id: brent.id)
  meats = Poll.create!(title: "Meats", author_id: bob.id)
  fruits = Poll.create!(title: "Fruits", author_id: jade.id)

  Question.destroy_all

  candy1 = Question.create!(poll_id: candy.id, text: "Choose between the following: ")
  candy2 = Question.create!(poll_id: candy.id, text: "Hard candy, or soft candy?")
  veggies1 = Question.create!(poll_id: veggies.id, text: "Quickest veggie to cook?")
  veggies2 = Question.create!(poll_id: veggies.id, text: "Do vegans have vegan powers?")
  meats1 = Question.create!(poll_id: meats.id, text: "Best type of steak?")
  fruits = Question.create!(poll_id: fruits.id, text: "Do fruits have seeds?")

  AnswerChoice.destroy_all

  candy_answer1 = AnswerChoice.create!(user_id: jade.id,question_id: candy1.id, text: "Lollipop")
  candy_answer2 = AnswerChoice.create!(user_id: bob.id,question_id: candy1.id, text: "Jolly Rancher")
  candy_answer3 = AnswerChoice.create!(user_id: brent.id,question_id: candy2.id, text: "soft candy")
  candy_answer4 = AnswerChoice.create!(user_id: sam.id,question_id: candy2.id, text: "soft candy")
  veggies_answer1 = AnswerChoice.create!(user_id: bob.id,question_id: veggies1.id, text: "Broccoli")
  veggies_answer2 = AnswerChoice.create!(user_id: sam.id,question_id: veggies1.id, text: "Mushrooms")
  veggies_answer3 = AnswerChoice.create!(user_id: jade.id,question_id: veggies2.id, text: "Hell Yea!")
  meats_answer1 = AnswerChoice.create!(user_id: brent.id,question_id: meats1.id, text: "Filet Mignon")
  fruits_answer1 = AnswerChoice.create!(user_id: brent.id,question_id: fruits.id, text: "Yes")
  fruits_answer2 = AnswerChoice.create!(user_id: sam.id,question_id: fruits.id, text: "Yes")


  Response.destroy_all

  r1 = Response.create!(answer_choice_id: candy_answer1.id, question_id: candy_answer1.question_id, user_id: candy_answer1.user_id)
  r2 = Response.create!(answer_choice_id: candy_answer2.id, question_id: candy_answer2.question_id, user_id: candy_answer2.user_id)
  r3 = Response.create!(answer_choice_id: candy_answer3.id, question_id: candy_answer3.question_id, user_id: candy_answer3.user_id)
  r4 = Response.create!(answer_choice_id: candy_answer4.id, question_id: candy_answer4.question_id, user_id: candy_answer4.user_id)
  r5 = Response.create!(answer_choice_id: veggies_answer1.id, question_id: veggies_answer1.question_id, user_id: veggies_answer1.user_id)
  r6 = Response.create!(answer_choice_id: veggies_answer2.id, question_id: veggies_answer2.question_id, user_id: veggies_answer2.user_id)
  r7 = Response.create!(answer_choice_id: veggies_answer3.id, question_id: veggies_answer3.question_id, user_id: veggies_answer3.user_id)
  r8 = Response.create!(answer_choice_id: meats_answer1.id, question_id: meats_answer1.question_id, user_id: meats_answer1.user_id)
  r9 = Response.create!(answer_choice_id: fruits_answer1.id, question_id: fruits_answer1.question_id, user_id: fruits_answer1.user_id)
  r10 = Response.create!(answer_choice_id: fruits_answer2.id, question_id: fruits_answer2.question_id, user_id: fruits_answer2.user_id)
end

  # r = Response.new(answer_choice_id: 1, question_id: 1, user_id: 1)