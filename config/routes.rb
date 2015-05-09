Rails.application.routes.draw do
  root to: 'site#index'
  resources :originators
  resources :applicants

end
