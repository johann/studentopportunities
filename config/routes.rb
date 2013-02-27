Sop::Application.routes.draw do
  
  resources :scholarshipgrants

  resources :honor_societies

  resources :others do
    collection { post :import }
  end

  resources :internships do
    collection { post :import }
  end

  resources :job_opportunities do
    collection { post :import }
  end

  resources :scholarship_grants do
    collection { post :import }
  end

  resources :graduate_assistantships do
    collection { post :import }
  end

  resources :university_programs do
    collection { post :import }
  end

  resources :university_honor_societies do
    collection { post :import }
  end

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