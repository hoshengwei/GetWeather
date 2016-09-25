Rails.application.routes.draw do
  resources :weatherrs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'weatherrs#index'
end
