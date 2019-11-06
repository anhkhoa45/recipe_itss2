class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  attr_accessor :user_name
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
