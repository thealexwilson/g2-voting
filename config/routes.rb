Rails.application.routes.draw do
  root 'employees#employees'
  post '/' => 'employee#create', as: 'employees'

  resources :employees do
    member do
      post 'upvote'
    end
  end
  
end
