class App < ActiveRecord::Base
  belongs_to :user
  has_many :contents
  has_one :subscription
  has_one :banner
  validates_formatting_of :appstore_url, using: :url
  validates_formatting_of :googleplay_url, using: :url
  validates_formatting_of :amazon_url, using: :url
  validates_formatting_of :hub_url, using: :url
  validates_formatting_of :site_url, using: :url
  validates_formatting_of :contact_email, using: :email
  validates_formatting_of :logo_url, using: :url
  validates_formatting_of :appicon_url, using: :url
  validates_formatting_of :theme_color, using: :hex_color
  validates_formatting_of :rss_feed_url, using: :url
  validates_formatting_of :blog_url, using: :url
end
