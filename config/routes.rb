Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  resources :categories do
    resources :entries
  end  
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/categories' => 'categories#index'
  # # http path to index article ^
  # get '/categories/new' => 'categories#new', as: 'new_category'
  # # http path for new articles ^ the comma part is coder assigned path. otherwise rails will automatically assign
  # post '/categories' => 'categories#create', as: 'create_category'
  # get '/categories/:id/edit' => 'categories#edit', as: 'edit_category'
  # put '/categories/:id' => 'categories#update', as: 'update_category'
  # get '/categories/:id/show' => 'categories#show', as: 'show_category'
  # delete '/categories/:id/delete' => 'categories#delete', as: 'delete_category'