Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/book' => 'application#new'
  get '/create' => 'application#create'
  get '/search_form' => 'application#search_form'
  get '/search' => 'application#search'
  get '/' => 'application#search_form'
  get '/edit' => 'application#edit'
  get '/update' => 'application#update'
end
