
class DoQuizController < ApplicationController
  def index
    
  end
  
  def start
    total = Question.count
    all = Question.find(:all).map {|x| x.id}
    
    session[:questions] = all
    session[:total] = total
    session[:current] = 0
    session[:correct] = 0
    
    redirect_to :action => "question"
    
  end
  
  def question
    @current = session[:current]
    @total = session[:total]
    
    if @current >= @total
      redirect_to :action => "end"
      return
    end
    
    @question = Question.find(session[:questions][@current])
    @choices = @question.choices.sort_by{rand}
    
    session[:question] = @question
    session[:choices] = @choices
  end
  
  def answer
    @current = session[:current]
    @total = session[:total]
    
    choice_id = params[:choice]
    
    @question = session[:question]
    @choices = session[:choices]
    
    @choice = choice_id ? Choice.find(choice_id) : nil
    if @choice and @choice.correct
      @correct = true
      session[:correct] += 1
    else
      @correct = false
    end
    
    session[:current] += 1
  end
  
  def end
    @correct = session[:correct]
    @total = session[:total]
    @score = @correct * 100 / @total
    @customer = Customer.new
  end
  
  def home
    @questions = Question.all
  end
end



