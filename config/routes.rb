Rails.application.routes.draw do
  resources :owners, :dogs
  #get 'dogs/index'
  #get 'dogs/show'
  #get 'dogs/new'
  #get 'dogs/edit'
  #get 'owners/index'
  #get 'owners/show'
  #get 'owners/new'
  #get 'owners/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
root "owners#index"
end
