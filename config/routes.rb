Sop::Application.routes.draw do
  resources :student_organizations do
    collection { post :import }
  end

  authenticated :user do
    root :to => 'home#index'
  end

  root :to => "student_organizations#index"
  
  devise_for :users
  resources :users
end