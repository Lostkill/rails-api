Rails.application.routes.draw do
  resources :produtos
  root to: "produtos#index"
end
