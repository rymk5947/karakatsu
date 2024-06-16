class CreatePosts < ActiveRecord::Migration[6.1]
  def change
      create_table :posts do |t|
        t.string :genre
        t.text :message
        t.binary :photo
      end
  end
end