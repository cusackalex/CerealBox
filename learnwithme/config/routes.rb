Rails.application.routes.draw do
  root 'courses#index'

  resources :courses do
    resources :contents
  end

  resources :users
end
