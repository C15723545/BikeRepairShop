Rails.application.routes.draw do
    
  resources :repairs do
	resources :feedbacks
  end
  
  controller :sessions do
	get 'login' => :new
	post 'login' => :create
	get 'logout' => :destroy
	delete 'logout' => :destroy
	
	get 'stafflogin' => :staffnew
    post 'stafflogin' => :staffcreate
    get 'stafflogout' => :staffdestroy
    delete 'stafflogout' => :staffdestroy 
  end

  resources :repairs
  resources :customers
  resources :quantities
  resources :jobs
  resources :parts
  resources :staffs
  
  get 'home' => 'pages'
  get 'about' => 'pages#about', as: 'about'
  get 'admin' => 'pages#admin', as: 'admin'
  get '/jobs' => 'jobs#job'
  get '/repairs' => 'repairs#repair'
  get '/parts' => 'partrs#part'
  get '/quantities' => 'quantities#quantity'
  get '/customers' => 'customers#customer'
  get '/staffs' => 'staffs#staff'
  
  get 'search', :to => 'repairs#search'
  
  root 'pages#home'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
