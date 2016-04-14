class App < ActiveRecord::Base
  belongs_to :user
  has_many :contents
  has_one :subscription
  has_one :banner
end
