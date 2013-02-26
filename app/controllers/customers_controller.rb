class CustomersController < ApplicationController
  
  before_filter :signed_in_admin, only: [:index]
  
  def new
    @customer = Customer.new
    session['s'] = params[:score] if params.has_key?(:score)
  end
  
  def create
    @customer = Customer.new(params[:customer])
    @customer.quiz_score = session['s']
    if @customer.save
      redirect_to :action => "show"
    else
      render action: "new"
    end
  end
  
  def index
    @customers = Customer.paginate(page: params[:page], per_page: 10)
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