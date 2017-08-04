class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :content
      t.string :title
      t.integer :view_count
      t.timestamps
    end
  end
end
