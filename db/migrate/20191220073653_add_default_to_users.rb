class AddDefaultToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :sales, :integer, default: 0
  end
end
