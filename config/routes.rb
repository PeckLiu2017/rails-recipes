Rails.application.routes.draw do

  namespace :admin do
    resources :categories
  end
  devise_for :users

  resources :events do
    resources :tickets, :controller => "event_tickets"

      collection do
        post :bulk_update
      end

  end
  resource :user

  namespace :admin do
    root "events#index"
    resources :events

    resources :users do
      resource :profile, :controller => "user_profiles"
    end
  end

  root "events#index"
  get "/faq" => "pages#faq"
end
