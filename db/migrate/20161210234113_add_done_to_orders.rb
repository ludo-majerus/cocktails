class AddDoneToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :done, :integer
  end
end
