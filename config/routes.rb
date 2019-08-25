Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  get  'posts/new' => 'posts#new'
  get  'posts/show'=> 'posts#show'
  post 'posts'     => 'posts#create'
end
