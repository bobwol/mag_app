class Banner < ActiveRecord::Base
  belongs_to :app
  belongs_to :user
  validates_formatting_of :banner_url, using: :url
end
