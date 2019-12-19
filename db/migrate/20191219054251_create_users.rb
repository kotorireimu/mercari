class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :nickname        , null: false
      t.string :family_name     , null: false
      t.string :first_name      , null: false
      t.string :family_name_kana, null: false
      t.string :first_name_kana , null: false
      t.integer :tell
      t.string :birth_year
      t.string :birth_month
      t.string :birth_day
      t.integer :sales
      t.text :image
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
