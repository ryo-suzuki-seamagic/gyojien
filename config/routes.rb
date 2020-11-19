Rails.application.routes.draw do
  devise_for :users
  root to:'posts#index'
  resources :mypage  do
    resources :fishcatch 
    resources :recipe
  end
end
