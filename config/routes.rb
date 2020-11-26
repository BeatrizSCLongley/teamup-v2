Rails.application.routes.draw do
  root to: 'solutions#index'
  get 'about', to: 'pages#about'
  get 'privacy_policy', to: 'pages#privacy_policy'
  get 'terms_conditions', to: 'pages#terms_conditions'

  resources :solutions, only: [:index, :show] do
    resources :contacts, only: [:new, :create]
  end
end
