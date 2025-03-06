class QuestionsController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    key_question = 'I am going to work'
    @question = params[:question]
    if @question == key_question || @question == key_question.upcase
      @answer = 'Great!'
      @answer
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
