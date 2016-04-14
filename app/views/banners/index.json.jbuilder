json.array!(@banners) do |banner|
  json.extract! banner, :id, :title, :banner_url, :banner_image_url, :app_id, :user_id
  json.url banner_url(banner, format: :json)
end
