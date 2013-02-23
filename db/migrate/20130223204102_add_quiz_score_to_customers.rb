class AddQuizScoreToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :quiz_score, :integer
  end
end
