Rails.application.routes.draw do
  devise_for :users

  root 'posts#index'

  resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
    member do
      post 'detail'
    end
    collection do
      get 'slide'
    end
  end

  resources :users, only: [:show]

  get "/auth/twitter/callback" => "omniauth_callbacks#twitter"

end
