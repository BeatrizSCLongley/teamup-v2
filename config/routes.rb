Rails.application.routes.draw do
  root to: 'solutions#index'
  get 'privacy_policy', to: 'pages#privacy_policy'
  get 'terms_conditions', to: 'pages#terms_conditions'

  resources :solutions, only: [:index, :show] do
    resources :contacts, only: [:new, :create]
  end

  # Instead of having an 'about' on page - have the index of associates be the
  # about page
  get :about, to: 'associates#index'
end
