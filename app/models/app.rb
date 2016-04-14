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
end
