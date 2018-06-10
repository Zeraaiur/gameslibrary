Rails.application.routes.draw do
  get 'videogames', to: "videogames#index"
  get 'videogames/:id', to: "videogames#show"
  get 'videogames/new', to: "videogames#new"
  post 'videogames', to: "videogames#create"
  delete 'videogames/:id', to: "videogames#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
