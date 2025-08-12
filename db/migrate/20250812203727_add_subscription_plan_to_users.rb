class AddSubscriptionPlanToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :subscription_plan_id, :string
    add_column :users, :subscription_status, :string
  end
end
