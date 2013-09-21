class CreateWhoRatedCommentRels < ActiveRecord::Migration
  def change
    create_table :who_rated_comment_rels do |t|
      t.integer :comment_id
      t.integer :user_id

      t.timestamps
    end

    add_index :who_rated_comment_rels, :comment_id
    add_index :who_rated_comment_rels, :user_id
    add_index :who_rated_comment_rels, [:comment_id, :user_id], unique: true
  end
end
