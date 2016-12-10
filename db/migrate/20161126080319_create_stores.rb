class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :content
      t.integer :cost
      t.string :state
      t.string :writer
      t.string :img_url , :default => ""

      t.timestamps
    end
  end
end
