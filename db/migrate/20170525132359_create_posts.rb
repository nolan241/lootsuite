class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.datetime :scheduled_at
      t.string :state
      t.integer :user_id
      t.boolean :facebook
      t.boolean :twitter

      t.timestamps
    end
  end
end
