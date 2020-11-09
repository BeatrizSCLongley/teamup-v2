Rails.application.routes.draw do
  root to: 'solutions#index'
  get 'about', to: 'pages#about'

  resources :solutions, only: [:index, :show] do
    resources :contacts, only: [:new, :create]
  end

  # get 'contacts', to: 'contacts#new', as: :contact
  # post 'contacts', to: 'contacts#create'
end
