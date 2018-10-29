class PagesController < ApplicationController

QUESTIONS = {
  1 => {name: "what's your name?", answer: "you simply be nice and i say"},
  2 => {name: "what can you do?", answer: "wanna have a shot?"}
}

  def answer
    @name = params[:question]
    @question = QUESTIONS.select { |id, r| r[:name] == @name }
  end
end
