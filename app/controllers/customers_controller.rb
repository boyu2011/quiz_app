class CustomersController < ApplicationController
  def create
    @customer = Customer.new(params[:customer])
    if @customer.save
      redirect_to :action => "show"
    else
      redirect_to :action => "fail"
    end
  end
  
  def show
    
  end
  
  def fail
    
  end

end