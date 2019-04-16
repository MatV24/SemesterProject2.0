Rails.application.routes.draw do
  resources :courseevaluations
  resources :coursefaculties
  resources :coursecriterions
  resources :criterions
  resources :faculties do
    collection {post :import }
  end
  resources :courses do
    collection { post :import }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
