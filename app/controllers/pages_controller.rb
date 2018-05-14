class PagesController < ApplicationController
  def ask
  end

  def answer
    @question = params[:user_question]
    if @question == "I am going to work right now!"
      @answer = "Great"
    else
      if @question.include? "?"
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I dont care, get dressed and go to work!"
      end
    end
  end
end
