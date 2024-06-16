class AddMessageToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :message, :string
  end
end
