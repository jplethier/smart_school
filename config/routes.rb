SmartSchool::Application.routes.draw do
  devise_for :schools
  
  namespace :school do
    root to: 'application#home'
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
