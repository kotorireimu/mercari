class ChangeDatatypeDeletedAtOfUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :deleted_at, :datetime, default: -> { 'NOW()' }
  end  
end
