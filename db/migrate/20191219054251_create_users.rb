class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :nickname        , null: false
      t.string :family_name     , null: false
      t.string :first_name      , null: false
      t.string :family_name_kana, null: false
      t.string :first_name_kana , null: false
      t.integer :tell           , null: false, unique: true
      t.string :birth_year      , null: false
      t.string :birth_month     , null: false
      t.string :birth_day       , null: false
      t.integer :sales          , null: false
      t.text :image
      t.datetime :deleted_at    ,null: false
      t.timestamps
    end
  end
end
