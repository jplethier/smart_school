SmartSchool::Application.routes.draw do
  devise_for :schools
  devise_for :admins
  devise_for :students
  devise_for :teachers
  
  namespace :school do
    root to: 'application#home'

    resources :subjects
    resources :teachers
  end

  namespace :teacher do
    root to: 'application#home'
  end

  namespace :student do
    root to: 'application#home'
  end

  namespace :admin do
    root to: 'application#home'
  end

  root to: 'application#home'
end
