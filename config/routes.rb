Rails.application.routes.draw do
  
  controller :sessions do
	get 'login' => :new
	post 'login' => :create
	get 'logout' => :destroy
	delete 'logout' => :destroy
  end

  resources :users
  resources :quantities
  resources :jobs
  resources :repairs
  resources :parts
  resources :bicycles
  resources :customers
  
  get '/jobs' => 'jobs#job'
  get '/repairs' => 'repairs#repair'
  get '/parts' => 'partrs#part'
  get '/bicycles' => 'bicycles#bicycle'
  get '/quantities' => 'quantities#quantity'
  get '/customers' => 'customers#customer'
  get '/users' => 'users#user'

  root 'repairs#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
