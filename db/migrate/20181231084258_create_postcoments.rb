class CreatePostcoments < ActiveRecord::Migration[5.2]
  def change
    create_table :postcoments do |t|
      t.integer :post_id
      t.integer :comment_id
      t.integer :position

      t.timestamps
    end
  end
end
