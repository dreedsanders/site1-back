Rails.application.routes.draw do
  root 'store#index' , as: 'store_index' #making the store index the root path. the 'as:' tells rails to create the
                                          #store_index_path and store_index_url accessor methods(?)
  # get 'store/index'   <--- not needed as we added the store index as the root path
  resources :products #provides all the route methods by using 'resources'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
