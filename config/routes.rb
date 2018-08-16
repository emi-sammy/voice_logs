Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :evaluators
  root 'voices#index'
  resources :voices
  resources :staffs

  mount LetterOpenerWeb::Engine, at: '/inbox' if Rails.env.development?
end
