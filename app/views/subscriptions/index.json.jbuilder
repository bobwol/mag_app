json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :id, :plan_name, :billing_cycle, :payment_form, :app_id, :user_id
  json.url subscription_url(subscription, format: :json)
end
