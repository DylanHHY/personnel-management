Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events

  namespace :admin do
    root "events#index"
    resources :events
  end

  root "events#index"
end
