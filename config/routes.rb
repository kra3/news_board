Rails.application.routes.draw do
  # get 'dashboard/index'
  resources :news do
    resources :comments
  end

  root  'dashboard#index'

  # for websocket
  mount ActionCable.server => '/cable'
end
