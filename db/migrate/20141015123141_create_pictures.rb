class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.text :description
      t.integer :art
      t.string :file

      t.timestamps
    end
  end
end
