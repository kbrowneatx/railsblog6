Railsblog6::Application.routes.draw do
  resources :users do
    resources :comments, :only => [:index]
  end
  resources :posts do
	resources :comments, :only => [:index, :new, :create]
  end

  root :to => 'posts#index'


end
