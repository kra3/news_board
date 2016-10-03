class News < ApplicationRecord
  # model_name.instance_variable_set :@route_key, 'news'
  has_many :comments, dependent: :destroy
  has_many :user_news
  has_many :user, through: :user_news
  validates :title, presence: true, length: { minimum: 5 }
end
