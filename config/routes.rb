Rails.application.routes.draw do
    root 'voice_checks#index'
    resources :voice_checks
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :evaluators

  resources :voices
  resources :staffs

  mount LetterOpenerWeb::Engine, at: '/inbox' if Rails.env.development?
end
