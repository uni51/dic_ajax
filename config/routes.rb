Rails.application.routes.draw do
  root to: 'blogs#top'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users

  resources :blogs do
    resources :comments
    collection do   # idなどを必要としない固有のルーティング
      post :confirm
    end
  end

  resources :favorites, only: [:create, :destroy]
end
