class QuestionsController < ApplicationController
  def ask
  end

  def answers
    @question = params[:questions]
    @answer = get_answer(@question)
  end

  private
  def get_answer(question)
      if question == "I am going to work"
        return "Great!"
      elsif question.include?("?")
        return "Silly question, get dressed and go to work!"
      else
        return "I don't care, get dressed and go to work!"
    end
  end


end
