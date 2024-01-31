Rails.application.routes.draw do
  resources :mandalas
  resources :cells
  get 'users/show'
  
  devise_for :users, controllers:{
      sessions: 'users/sessions'
  }
  root "home#index"
end
