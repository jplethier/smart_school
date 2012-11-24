SmartSchool::Application.routes.draw do
  devise_for :users
  
  namespace :school do
    root to: 'application#index'
  end

  namespace :teacher do
    root to: 'application#index'
  end

  namespace :student do
    root to: 'application#index'
  end

  namespace :admin do
    root to: 'application#index'
  end

  root to: 'application#home'
end
