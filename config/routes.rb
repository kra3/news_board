Rails.application.routes.draw do
  # get 'dashboard/index'
  resources :news
  # resources :comments
  root  'dashboard#index'
end
