class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :DOB, :date
    add_column :users, :Gender, :string
    add_column :users, :Course, :string
    add_column :users, :Bio, :string
  end
end
