class QuestionsController < ApplicationController
  # This controller will have two actions, ask and answer.
  # the message is I am going to work, the coach will answer Great!
  # If the message has a question mark ? at the end, the coach will
  # answer Silly question, get dressed and go to work!.
  # Otherwise she/he will answer I don't care, get dressed and go to work!
  def ask
    @ask = params[:question]
  end

  def answer
    if params[:question] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:question].include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
