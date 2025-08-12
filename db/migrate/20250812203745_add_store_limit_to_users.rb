class AddStoreLimitToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :store_limit, :integer
  end
end
