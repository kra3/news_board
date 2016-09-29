Rails.application.routes.draw do
  devise_for :users
  # get 'dashboard/index'
  resources :news do
    resources :comments, except: [:index, :edit, :update]
  end

  root  'dashboard#index'

  # for websocket
  mount ActionCable.server => '/cable'
end
