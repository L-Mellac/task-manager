class AddDayDateToDays < ActiveRecord::Migration[7.0]
  def change
    add_column :days, :day_date, :string
  end
end
