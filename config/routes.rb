Rails.application.routes.draw do
  root :to => 'stories#index'
  resources :stories do
    resources :sentences
  end
end
