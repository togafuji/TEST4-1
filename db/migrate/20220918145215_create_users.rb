class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :title
      t.datetime :start
      t.datetime :finish
      t.boolean :alltime
      t.text :onememo

      t.timestamps
    end
  end
end
