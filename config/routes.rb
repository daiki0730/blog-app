Rails.application.routes.draw do
  root 'posts#index'
  get  'posts/new'  =>  'posts#new'
end
