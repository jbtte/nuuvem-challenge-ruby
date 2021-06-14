class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.string :purchaser
      t.string :description
      t.float :price
      t.integer :count
      t.string :address
      t.string :merchant

      t.timestamps
    end
  end
end
