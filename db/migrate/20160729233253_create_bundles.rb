class CreateBundles < ActiveRecord::Migration
  def change
    create_table :bundles do |t|
      t.string :title, null: false
      t.string :artist, null: false
      t.text :description
      t.string :background_url
      t.string :thumbnail_url

      t.timestamps null: false
    end
  end
end
