Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :parents do
      resources :children
  end



  namespace :admin do
    resources :users
    root to: "users#index"
  end
  #After loggin in, user may be redirected to this root? (Check devise documentation)
  
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
