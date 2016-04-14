class CreatePushes < ActiveRecord::Migration
  def change
    create_table :pushes do |t|
      t.string :push_message
      t.datetime :delivery_time
      t.string :push_app_id
      t.string :push_client_key
      t.string :push_restapi_key
      t.string :appstore_prod_cert
      t.string :appstore_dev_cert
      t.string :gcm_sender_id
      t.string :gcm_api_key
      t.references :app, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
