Rails.application.routes.draw do
  resource :users, except: [:new, :destroy] do 
    get :sign_up
    get :sign_in
  end

  resource :sessions, only: [:create, :destroy]

  resources :employees, except: [:destroy]

  resources :clients, except: [:destroy]

  resources :records, except: [:index, :destroy]

  root "employees#index"
end