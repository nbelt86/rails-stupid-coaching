class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
    @questions = []

    if @question.capitalize == "I am going to work"
      @answer = "Great!"
    elsif @question.include?("?")
      @answer = "Silly question..."
    elsif @question.exclude?("?")
      @answer = "I don't care..."
    end

  end
end
