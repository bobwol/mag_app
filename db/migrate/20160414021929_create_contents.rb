class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.string :info
      t.string :content_url
      t.string :content_price
      t.string :status
      t.string :product_id
      t.string :cover
      t.string :hpub_url
      t.string :content_id
      t.references :app, index: true
      t.references :user, index: true
      t.datetime :publish_date
      t.string :publish_platform

      t.timestamps
    end
  end
end
