class AddCreatedAtToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :created_at, :TIMESTAMP
  end
end
