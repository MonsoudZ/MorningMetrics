Rails.application.routes.draw do
  devise_for :users
  resource :checkout, only: [] do
    post :create_session # POST /checkout/create_session
    get  :success        # GET  /checkout/success
  end
  resource :billing, only: [:show] do
    post :portal        # POST /billing/portal
  end
  post "/stripe/webhook", to: "stripe_webhooks#receive"
end
