class ChangeYearToString < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :year, :integer
  end
end
