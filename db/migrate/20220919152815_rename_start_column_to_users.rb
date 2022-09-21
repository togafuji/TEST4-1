class RenameStartColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :start, :start_at
  end
end
