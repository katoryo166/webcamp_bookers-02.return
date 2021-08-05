Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'homes/about'
  resources :books
  resources :users, only:[:show, :index, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
