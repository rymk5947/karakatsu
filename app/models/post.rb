# app/models/post.rb

class Post < ApplicationRecord
  # Postクラスの定義
   has_one_attached :photo

   validates :message, presence: true
   validates :photo, presence: true, if: -> { photo.attached? }

   belongs_to :user

end