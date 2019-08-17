class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text        :title
      t.text        :text
      t.text        :image
      t.timestamps null: true
    end
  end
end
