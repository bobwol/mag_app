class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.string :ios_installs
      t.string :android_installs
      t.references :app, index: true
      t.string :users_total
      t.references :user, index: true

      t.timestamps
    end
  end
end
