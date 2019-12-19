class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :nickname, :family_name, :first_name, :family_name_kana, :first_name_kana, :tell, :birth_year, :birth_month, :birth_day, :delete_at, presence: true
  validates :tell, unique: true
end
