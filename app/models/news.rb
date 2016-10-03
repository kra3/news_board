class News < ApplicationRecord
  # model_name.instance_variable_set :@route_key, 'news'
  has_many :comments, dependent: :destroy
  belongs_to :user
  has_many :news_views
  has_many :seen_by, through: :news_views, class_name: "User"
  validates :title, presence: true, length: { minimum: 5 }
end
