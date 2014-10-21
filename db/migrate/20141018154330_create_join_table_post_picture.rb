class CreateJoinTablePostPicture < ActiveRecord::Migration
  def change
    create_join_table :posts, :pictures do |t|
       t.index [:post_id, :picture_id]
       t.index [:picture_id, :post_id]
    end
  end
end
