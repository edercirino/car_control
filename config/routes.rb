Rails.application.routes.draw do
 resources :cars do
  resources :refuels
end
root "cars#index"
end
