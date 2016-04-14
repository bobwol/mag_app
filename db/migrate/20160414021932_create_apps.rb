class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :title
      t.text :description
      t.string :appstore_url
      t.string :googleplay_url
      t.string :amazon_url
      t.string :hub_url
      t.string :appstore_category
      t.string :googleplay_category
      t.string :amazon_category
      t.string :site_url
      t.string :contact_email
      t.string :app_plan
      t.string :logo_url
      t.string :appicon_url
      t.string :status
      t.string :app_rating
      t.string :app_price
      t.string :app_availability
      t.string :keywords
      t.string :app_version
      t.string :copyright
      t.references :user, index: true
      t.string :appstore_category2
      t.string :theme_color
      t.string :rss_feed_url
      t.string :ga_app_id
      t.string :ga_hub_id
      t.string :blog_url
      t.string :facebook_url
      t.string :twitter_url
      t.string :instagram_url
      t.string :googleplus_url
      t.string :linkedin_url
      t.string :youtube_url
      t.string :vimeo_url
      t.string :pinterest_url
      t.string :store_url
      t.string :content_frequency
      t.string :user_subscription

      t.timestamps
    end
  end
end
