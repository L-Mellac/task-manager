class ChangeDefaultValueForPriority < ActiveRecord::Migration[7.0]
  def change
    change_column_default :tasks, :priority, from: 5, to: 3 
  end
end
