class AddImgurlToProfessors < ActiveRecord::Migration[5.0]
  def change
    add_column :professors, :img_url, :string
  end
end
