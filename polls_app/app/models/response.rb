class Response < ApplicationRecord
  belongs_to :answer_choice, 
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: 'AnswerChoice'

  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: 'User'

  # belongs_to :question,
  #   primary_key: :id,
  #   foreign_key: :question_id,
  #   class_name: 'Question'

  has_one :question,
    through: :answer_choice,
    source: :question


    def sibling_responses
      # me = self.id
      self.question.responses.where.not(responses: {id: self.id})
    end

    
end 