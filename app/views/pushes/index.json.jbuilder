json.array!(@pushes) do |push|
  json.extract! push, :id, :push_message, :delivery_time, :push_app_id, :push_client_key, :push_restapi_key, :appstore_prod_cert, :appstore_dev_cert, :gcm_sender_id, :gcm_api_key, :app_id, :user_id
  json.url push_url(push, format: :json)
end
