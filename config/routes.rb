Rails.application.routes.draw do
  
  controller :sessions do
	get 'login' => :new
	post 'login' => :create
	get 'logout' => :destroy
	delete 'logout' => :destroy
  end

  resources :repairs
  resources :customers
  resources :quantities
  resources :jobs
  resources :parts
  
  get '/jobs' => 'jobs#job'
  get '/repairs' => 'repairs#repair'
  get '/parts' => 'partrs#part'
  get '/quantities' => 'quantities#quantity'
  get '/customers' => 'customers#customer'

  root 'repairs#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
