Rails.application.routes.draw do

  mount StripeEvent::Engine, at: '/webhooks/stripe'

  devise_for :accounts, controllers: { registrations: "registrations" }

  get '/plans' => 'public#plans'

  root to: 'public#home'

end
