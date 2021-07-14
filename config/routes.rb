Rails.application.routes.draw do
  root to:'posts#index'
  devise_for :users
    resources :users, only: :show
    resources :fishcatch 
    resources :recipe
    resources :colimn
end
