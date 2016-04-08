class EditPriceColumn < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.change :price, :decimal, precision: 7, scale: 2
    end
  end
end
