Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
  end

  get "up" => "rails/health#show", as: :rails_health_check

  root to: "rooms#index"
end
