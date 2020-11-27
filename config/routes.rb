Rails.application.routes.draw do
  devise_for :users
  root to: 'hauntedhouses#index'

  resources :hauntedhouses, only: [:index, :show, :new, :edit, :update, :create, :destroy ] do
    resources :journeys, only: [:show, :new, :create]

  end
  resources :journeys, only: [:index, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


