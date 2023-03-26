class CreateBlogPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :body
      t.text :image_url
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
