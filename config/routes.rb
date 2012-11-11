Ochiba::Application.routes.draw do
  resources :photos

  get '/login' => 'sessions#new', as: :new_user_session
  post '/login' => 'sessions#create', as: :user_session
  delete '/logout' => 'sessions#destroy', as: :destroy_user_session

  namespace :admin do
    # TODO: エントリを実装したらルートを変更する
    get '/' => 'home#index'
    resources :manufacturers
    resources :cameras
    resources :lenses
  end
end
