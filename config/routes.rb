Rails.application.routes.draw do
  devise_for :users
  root to: 'hauntedhouses#index'
  resources :hauntedhouses, only: [:index, :show, :new, :edit, :update, :create ] do
    resources :journeys, only: [:index, :show, :new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


