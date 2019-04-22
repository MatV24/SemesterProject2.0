Rails.application.routes.draw do
  resources :reports
  resources :courseevaluations
  resources :coursefaculties
  resources :coursecriterions
  resources :criterions

  root to: "welcomecontroller#show"

  resources :faculties do
    collection {post :import }
  end
  resources :courses do
    collection { post :import }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
