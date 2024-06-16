require_relative '../models/post'

class HomesController < ApplicationController
  def top

    post = Post.first

    @photo = post.photo

    @posts = Post.all

  end

end