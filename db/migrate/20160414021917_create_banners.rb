class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :title
      t.string :banner_url
      t.string :banner_image_url
      t.references :app, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
