json.array!(@apps) do |app|
  json.extract! app, :id, :title, :description, :appstore_url, :googleplay_url, :amazon_url, :hub_url, :appstore_category, :googleplay_category, :amazon_category, :site_url, :contact_email, :app_plan, :logo_url, :appicon_url, :status, :app_rating, :app_price, :app_availability, :keywords, :app_version, :copyright, :user_id, :appstore_category2, :theme_color, :rss_feed_url, :ga_app_id, :ga_hub_id, :blog_url, :facebook_url, :twitter_url, :instagram_url, :googleplus_url, :linkedin_url, :youtube_url, :vimeo_url, :pinterest_url, :store_url, :content_frequency, :user_subscription
  json.url app_url(app, format: :json)
end
