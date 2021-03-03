Rails.application.routes.draw do

  mount StripeEvent::Engine, at: '/webhooks/stripe'

  devise_for :accounts, controllers: { registrations: "registrations" }

  get '/plans' => 'public#plans'
  
  post 'plan/subscribe' => 'subscriptions#choose_plan', ad: :choose_plan

  root to: 'public#home'

end
