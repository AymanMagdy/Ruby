class AddUpdatedAtToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :updated_at, :TIMESTAMP
  end
end
