Rails.application.routes.draw do

  # get 'doses/new'
  # get 'doses/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/cocktails/:id/', to:'cocktails#show', as:'doses'
  root to:"cocktails#index"
  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:new, :create, :destroy]
  end
end
