Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :geniuses, only: [:index, :show, :new, :create, :destroy] do
    resources :lectures, only: [:create, :destroy]
    resources :photos, only: [:new, :create]
  end
  resources :lectures, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
