class AddAdressToCoaches < ActiveRecord::Migration[7.0]
  def change
    add_column :coaches, :address, :string
  end
end
