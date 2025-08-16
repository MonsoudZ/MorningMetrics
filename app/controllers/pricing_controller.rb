class PricingController < ApplicationController
  def index
    @plans = [
      { key: "single_store", name: "1 store",  price: 15 },
      { key: "two_store",    name: "2 stores", price: 25 },
      { key: "three_store",  name: "3 stores", price: 35 }
    ]
  end
end