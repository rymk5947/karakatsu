# app/models/post.rb

class Post < ApplicationRecord
  # Postクラスの定義
   has_one_attached :photo
end