Rails.application.routes.draw do
  root to: 'site#index'
  get '/faq', to: 'site#faq'
  resources :originators
  resources :applicants
  match '/404', to: 'errors#file_not_found', via: :all
  match '/422', to: 'errors#unprocessable', via: :all
  match '/500', to: 'errors#internal_server_error', via: :all

end
