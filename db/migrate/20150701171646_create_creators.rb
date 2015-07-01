class CreateCreators < ActiveRecord::Migration
  def change
    create_table :creators do |t|
      t.string :name
      t.text :bio
      t.references :campaign, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
