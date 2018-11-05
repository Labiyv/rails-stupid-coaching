class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params['question']
    @answer = if params['question'][-1] == '?'
                'silly question, get dressed and go to work!.'
              elsif params['question'] == 'I am going to work'
                'Great!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
