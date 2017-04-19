Rails.application.routes.draw do
  root 'employees#employees_call'
  post '/' => 'employee#create', as: 'employees'
end
