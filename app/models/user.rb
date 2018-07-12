class User < ApplicationRecord
  has_secure_password
  has_many :matches
  has_many :match_requests
  has_many :potential_matches
  has_many :user_answers
  has_many :answers, through: :user_answers

  def find_matches
    # counter = 0
    my_matches = []

    User.all.each do |user|
      i = 0
      counter = 0
      while i < user.answers.length
        if self.answers[i].id == user.answers[i].id && self.answers[i].category != "L"
          counter += 1
        elsif self.answers[i].category == "L" && user.answers[i].category == self.answers[i].category && self.answers[i].id != user.answers[i].id
          counter += 1
        end
        i += 1
      end

      # user.answers.each do |user_answer|
      #   self.answers.each do |self_answer|
      #     if self_answer.id == user_answer.id && self_answer.category != "L"
      #       counter += 1
      #     elsif self_answer.category == "L" && user_answer.category == self_answer.category && self_answer.id != user_answer.id
      #       byebug
      #       counter += 1
      #     end #end if
      #   end #next self_answer
      # end #next user_answer
      if counter >= 4 && !my_matches.include?(user) && user.id != self.id
        my_matches << user
      end #end if
    end #next user
    my_matches
  end #end method

  def show_categories
    comp = 0
    stress = 0
    leadership = 0
    category_string = ""

    self.answers.each do |answer|

      if answer.category == "C" && answer.id % 2 != 0
        comp += 1
      elsif answer.category == "S" && answer.id % 2 != 0
          stress += 1
        elsif answer.category == "L" && answer.id % 2 != 0
            leadership += 1
      end
    end

    if comp > 1
      category_string += "You find a competive atmosphere motivating! "
    elsif comp < 1
      category_string += "You enjoy working in a highly collaborative atmosphere. "
    else
      category_string += "You like working with dynamic individuals who help each other to be better. "
    end

    if leadership > 1
      category_string += "In groups you often take on a leadership role. "
    elsif leadership < 1
      category_string += "You work well in groups, supporting an idea to fruition. "
    else
      category_string += "In group projects you have a good balance of advocating for your own ideas and supporting others. "
    end

    if stress > 1
      category_string += "You thrive in high-intensity environments. "
    elsif stress < 1
      category_string += "You work best in a calm work environment. "
    else
      category_string += "You need some variety in your worklife to keep you interested. "
    end

    category_string
  end




end
