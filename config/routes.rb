# frozen_string_literal: true

Rails.application.routes.draw do
  resources :properties do
    resources :bookings
  end
  resources :users do
    resources :bookings
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
