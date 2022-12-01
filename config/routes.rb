Rails.application.routes.draw do
  root "employees#index"

  resource :users, except: [:new, :destroy] do 
    get :sign_up
    get :sign_in
  end

  resource :sessions, only: [:create, :destroy]

  resources :clients, except: [:destroy]

  resources :records, except: [:index, :destroy]

  resources :employees, except: [:destroy]
end