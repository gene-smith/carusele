class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :type
      t.string :name
      t.string :url
      t.integer :coment_count
      t.integer :fb_like_count
      t.integer :fb_share_count
      t.integer :linkedin_share_count
      t.integer :pinterest_pin_count
      t.integer :pinterest_follower_count
      t.integer :pinterest_like_count
      t.integer :tweet_count
      t.integer :instagram_follower_count
      t.integer :instagram_like_count
      t.string :campaign_name
      t.string :rights_version
      t.references :campaign, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
