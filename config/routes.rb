Rails.application.routes.draw do
  resources :repairs
  resources :parts
  resources :bicycles
  resources :partsrequireds
  resources :customers
  resources :discounts
  
  get '/repairs' => 'repairs#repair'
  get '/parts' => 'partrs#part'
  get '/bicycles' => 'bicycles#bicycle'
  get '/partsrequireds' => 'partsrequireds#partsrequired'
  get '/customers' => 'customers#customer'
  get '/discounts' => 'discounts#discount'  
  
  root 'repairs#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
