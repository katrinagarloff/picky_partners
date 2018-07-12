class User < ApplicationRecord
  has_secure_password
  has_many :user_answers
  has_many :answers, through: :user_answers

  def find_matches
    counter = 0
    my_matches = []

    User.all.each do |user|
      counter = 0
      self.answers.each do |answer|
        if answer.id == user.answer.id
          counter += 1
        end #end if
      end #next answer
      if counter >= 4 && !my_matches.include?(user)
        my_matches << user
      end #end if
    end #next user
    my_matches
  end #end method
end
