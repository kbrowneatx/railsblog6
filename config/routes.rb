Railsblog6::Application.routes.draw do

  resources :users do
    resources :comments, :only => [:index]
  end
  resources :posts do
	resources :comments, :only => [:index, :new, :create, :edit, :update]
  end

  # check on these...
  get "home/index"
  match '/sessions' => 'sessions#create', as: :sessions
  match '/logout' => 'sessions#destroy', as: :logout

  root :to => 'home#index'


end
