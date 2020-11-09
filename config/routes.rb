Rails.application.routes.draw do
  root to: 'solutions#index'
  get 'about', to: 'pages#about'

  resources :solutions, only: [:index] do
    resources :contacts, only: [:create]
  end

  resources :contacts, only: [:new]
  # get 'contacts', to: 'contacts#new', as: :contact
  # post 'contacts', to: 'contacts#create'
end
