Rails.application.routes.draw do
  root to: 'site#index'
  get '/originator', to: 'site#originator'
end
