Rails.application.routes.draw do
  get 'sessions/new'
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "posts#index"

  resources :sessions, only: :create
  resources :posts

end
