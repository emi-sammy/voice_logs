Rails.application.routes.draw do
  root 'voice_checks#top'



    resources :voice_checks
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :evaluators


  resources :staffs

  mount LetterOpenerWeb::Engine, at: '/inbox' if Rails.env.development?
end
