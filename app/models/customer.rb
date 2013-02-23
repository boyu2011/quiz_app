class Customer < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone_number, :zip_code
end
