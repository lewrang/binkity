class AddArtType < ActiveRecord::Migration
  def change
    remove_column :pictures, :art
    add_column :pictures, :is_bracelet, :boolean, default: false
    add_column :pictures, :is_earring, :boolean, default: false
    add_column :pictures, :is_necklace, :boolean, default: false
    add_column :pictures, :is_other, :boolean, default: false
    add_column :pictures, :is_set, :boolean, default: false
  end
end
