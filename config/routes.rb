Rails.application.routes.draw do
  root "home#index"
  resources :mandalas
  resources :cells
  devise_for :users, controllers:{
      sessions: 'users/sessions'
  }
end
