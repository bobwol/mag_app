json.array!(@contents) do |content|
  json.extract! content, :id, :title, :info, :content_url, :content_price, :status, :product_id, :cover, :hpub_url, :content_id, :app_id, :user_id, :publish_date, :publish_platform
  json.url content_url(content, format: :json)
end
