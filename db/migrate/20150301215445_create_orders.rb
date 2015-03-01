class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :receiver, null: false
      t.string :email, null: false
      t.text :address, null: false
      t.boolean :sent, default: false
      t.string :payment_callback

      t.timestamps null: false
    end
  end
end
