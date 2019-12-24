class ChangeDataTellToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :tell, :string
  end
end
