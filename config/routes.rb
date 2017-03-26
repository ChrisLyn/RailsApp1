Rails.application.routes.draw do
  resources :people, except: [:show]

  root to: "people#index"
  
  get 'people/index' => 'people#index'

  get 'people/new' => 'people#new'

  get 'people/create'

  get 'people/edit'

  get 'people/update'

  get 'people/destroy'

  get "dashboard/:page" => "dashboard#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
