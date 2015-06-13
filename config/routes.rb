Rails.application.routes.draw do
  root to: 'site#index'
  get '/faq', to: 'faqs#index'
  resources :originators
  resources :applicants
  resources :faqs
  match '/404', to: 'errors#file_not_found', via: :all
  match '/422', to: 'errors#unprocessable', via: :all
  match '/500', to: 'errors#internal_server_error', via: :all
  get '/applicants/:id/accept', to: 'applicants#accept'
  get '/applicants/:id/more_info', to: 'applicants#more_info'
  get '/applicants/:id/reject', to: 'applicants#reject'

end
