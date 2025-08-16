Rails.application.routes.draw do
  devise_for :users
  # config/routes.rb
  get  "/pricing",           to: "pricing#index"

  resource :checkout, only: [] do
    post :create_session     # /checkout/create_session
    get  :success            # /checkout/success
  end

  resource :billing,  only: [:show] do
    post :portal             # /billing/portal
  end

  post "/stripe/webhook",    to: "stripe_webhooks#receive"
end
