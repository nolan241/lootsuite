class AddControllFieldsToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :error, :text
  end
end
