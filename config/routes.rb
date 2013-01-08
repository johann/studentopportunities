Sop::Application.routes.draw do
  resources :academic_honor_societies do
    collection { post :import }
  end

  resources :greek_organizations do
    collection { post :import }
  end

  resources :student_organizations do
    collection { post :import }
  end

  authenticated :user do
    root :to => 'home#index'
  end

  root :to => "home#index"
  
  devise_for :users
  resources :users
end