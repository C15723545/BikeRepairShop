Rails.application.routes.draw do
  resources :jobs
  resources :repairs
  resources :parts
  resources :bicycles
  resources :partsrequireds
  resources :customers
  
  get '/jobs' => 'jobs#job'
  get '/repairs' => 'repairs#repair'
  get '/parts' => 'partrs#part'
  get '/bicycles' => 'bicycles#bicycle'
  get '/partsrequireds' => 'partsrequireds#partsrequired'
  get '/customers' => 'customers#customer'

  root 'repairs#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
