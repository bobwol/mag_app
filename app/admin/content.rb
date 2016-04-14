ActiveAdmin.register Content do
  permit_params :title, :info, :content_url, :content_price, :status, :product_id, :cover, :hpub_url, :content_id, :publish_date, :publish_platform

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
