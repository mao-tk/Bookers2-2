Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'home/about' => "homes#about", as: "about"

  resources :users, only: [:index, :show, :edit, :update]

  resources :books, only: [:index, :create, :show, :edit, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
