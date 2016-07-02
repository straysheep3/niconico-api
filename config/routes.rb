Rails.application.routes.draw do
  root "infos#index"
  resources :infos
end
