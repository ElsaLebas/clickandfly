Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "pages#home"
resources :planes

end


# resources :planes => for these 7 routes
  # get "planes", to: "planes#index"
  # get "planes/new", to: "planes#new",  as: :new_plane
  # post "planes", to: "planes#create"
  # get "planes/:id", to: "planes#show", as: :plane
  # get "planes/:id/edit", to: "planes#edit", as: :edit_plane
  # patch "planes/:id/update", to: "planes#update"
  # delete "planes/:id/destroy", to: "planes#destroy"










