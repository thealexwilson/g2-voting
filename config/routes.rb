Rails.application.routes.draw do
  resources :employees do
  member do
    post 'upvote'
  end
end

  root 'employees#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
