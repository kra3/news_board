class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :news, dependent: :destroy
  has_many :news_views
  has_many :seen, through: :news_views, class_name: "News"
  has_many :comments, dependent: :destroy
end
