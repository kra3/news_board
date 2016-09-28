Rails.application.routes.draw do
  # get 'dashboard/index'
  resources :news do
    resources :comments, shallow: true
  end
  # resources :comments
  root  'dashboard#index'
end
