class CreatePosts < ActiveRecord::Migration[6.1]
  def change
      create_table :posts do |t|
        t.integer :genre, default: 0
        t.text :message
        t.binary :photo
      end
  end
end