Ochiba::Application.routes.draw do
  get '/login' => 'sessions#new', as: :new_user_session
  post '/login' => 'sessions#create', as: :user_session
  delete '/logout' => 'sessions#destroy', as: :destroy_user_session
end
