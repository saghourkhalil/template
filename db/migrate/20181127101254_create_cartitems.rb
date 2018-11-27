class CreateCartitems < ActiveRecord::Migration[5.2]
  def change
    create_table :cartitems do |t|
      t.references :cart
      t.references :item
      t.timestamps
    end
  end
end
