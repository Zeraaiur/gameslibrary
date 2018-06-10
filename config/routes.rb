Rails.application.routes.draw do
    get 'videogames/result', to:"videogames#result", as: :result
    post 'videogames/search' => "videogames#search", as: :search
  get 'videogames/new', to: "videogames#new"
  get 'videogames', to: "videogames#index"
  get 'videogames/:id', to: "videogames#show"
  post 'videogames', to: "videogames#create"
  delete 'videogames/:id', to: "videogames#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
