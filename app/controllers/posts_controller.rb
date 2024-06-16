class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    @post.created_at = Time.now # 現在の日時を設定する
    @post.photo.attach(params[:post][:photo]) if params[:post][:photo]
    if @post.save
      redirect_to root_path, notice: '投稿が成功しました。'
    else
      render file: 'app/views/posts/show.html.erb', layout: true
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post.id)
  end

  private

  def post_params
    params.require(:post).permit(:genre, :message, :photo)
  end
end