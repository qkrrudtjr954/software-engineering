class AddWriterToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :writer, :string
  end
end
