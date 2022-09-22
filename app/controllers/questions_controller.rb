class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.end_with?("?")
      @answer = "silly question, get dressed and go to work"
    elsif @question.end_with?("!")
      @answer = "I can feel your motivation!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end

  end
end
