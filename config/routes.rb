Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :calendly do
    post :invitee_created
  end

  resources :meetings, only: [:index]
end
