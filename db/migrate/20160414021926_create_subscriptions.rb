class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :plan_name
      t.string :billing_cycle
      t.string :payment_form
      t.references :app, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
