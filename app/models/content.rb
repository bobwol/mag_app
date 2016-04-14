class Content < ActiveRecord::Base
  belongs_to :app
  belongs_to :user
  validates_formatting_of :content_url, using: :url
end
