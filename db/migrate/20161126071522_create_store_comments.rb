class CreateStoreComments < ActiveRecord::Migration[5.0]
  def change
    create_table :store_comments do |t|
      t.integer :store_id
      t.string :content
      t.string :writer

      t.timestamps
    end
  end
end
