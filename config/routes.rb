Rails.application.routes.draw do
  devise_for :admins,
    path_names: {
      sign_in: 'sign-in',
    }
  namespace :admins do
    resources :asanas, except: [:show, :destroy]
  end
  resources :home, only: [:index]
  get '/asanas/by/:search_type', to: 'asanas#index', as: :asanas_by_search_default
  get '/asanas/by/:search_type/:search', to: 'asanas#index', as: :asanas_by_search
  resources :asanas, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
