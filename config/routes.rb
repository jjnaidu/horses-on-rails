Rails.application.routes.draw do

  root 'welcome#index'
  resources :users, only: [:new, :create, :show] do
    resources :horses, :shallow => true
  end
  resource :session, only: [:new, :create, :destroy]

end
