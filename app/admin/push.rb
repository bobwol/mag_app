ActiveAdmin.register Push do
  permit_params :push_message, :delivery_time, :push_app_id, :push_client_key, :push_restapi_key, :appstore_prod_cert, :appstore_dev_cert, :gcm_sender_id, :gcm_api_key

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
