Rails.application.routes.draw do

  mount StripeEvent::Engine, at: '/webhooks/stripe' 


  devise_for :accounts
  root to: 'public#home'

end
