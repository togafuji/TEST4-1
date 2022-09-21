class AddOnememoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :onememo, :string
  end
end
