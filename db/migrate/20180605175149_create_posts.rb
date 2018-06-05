class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :slug, null: false, unique: true

      t.timestamps
    end
  end
end
