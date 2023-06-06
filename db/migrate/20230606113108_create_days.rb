class CreateDays < ActiveRecord::Migration[7.0]
  def change
    create_table :days do |t|
      t.string :highlight
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
