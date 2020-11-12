Rails.application.routes.draw do
  get 'ingredients/name'

  resources :cocktails do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
  # root to: 'gardens#index'
  # resources :gardens, except: [:index] do
  #   resources :plants, only: [:create]
  # end

  # resources :plants, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
