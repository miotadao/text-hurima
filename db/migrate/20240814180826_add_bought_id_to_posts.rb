class AddBoughtIdToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :bought_id, :integer
  end
end
