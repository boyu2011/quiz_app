class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :zip_code
      t.string :phone_number

      t.timestamps
    end
  end
end
