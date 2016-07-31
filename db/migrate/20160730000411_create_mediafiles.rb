class CreateMediafiles < ActiveRecord::Migration
  def change
    create_table :mediafiles do |t|
      t.integer :bundle_id
      t.string :title
      t.string :media_url

      t.timestamps null: false
    end
    add_index :mediafiles, :bundle_id
  end
end
