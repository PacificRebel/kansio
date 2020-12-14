Rails.application.routes.draw do
  resources :abouts
  get 'etusivus/index'

  # resources :about, :contact

  root 'etusivus#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
