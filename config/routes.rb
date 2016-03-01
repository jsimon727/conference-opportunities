Rails.application.routes.draw do
  devise_for :conference_organizers, controllers: {omniauth_callbacks: 'conference_organizers/omniauth_callbacks'}
  resources :conferences, only: [:index, :show, :edit] do
    resource :approval, only: [:new, :create], module: :conferences
  end
  resource :approval, only: [:show]
  root to: 'conferences#index'
end
