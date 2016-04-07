class AddColumnsToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :closed, :boolean, default: false
    add_column :orders, :total, :decimal, precision: 8, scale: 2
    add_column :orders, :tendered, :decimal, precision: 8, scale: 2
    add_column :orders, :change, :decimal, precision: 8, scale: 2
  end
end
