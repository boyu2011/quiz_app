class CustomersController < ApplicationController
  
  before_filter :signed_in_admin
  
  def create
    @customer = Customer.new(params[:customer])
    @customer.quiz_score = params[:quiz_score]
    if @customer.save
      redirect_to :action => "show"
    else
      redirect_to :action => "fail"
    end
  end
  
  def index
    @customers = Customer.all
  end
  
  def show
    
  end
  
  def fail
    
  end
  
  private
    
    def signed_in_admin
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end
end