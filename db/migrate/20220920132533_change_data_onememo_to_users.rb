class ChangeDataOnememoToUsers < ActiveRecord::Migration[7.0]
  def change
   change_column :users, :onememo, :text
  end
end
