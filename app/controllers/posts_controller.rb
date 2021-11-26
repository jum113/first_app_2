class PostsController < ApplicationController
  def index
    @post = Post.all
    @post.each do |post|
      post.content
    end
  end

  def new
  end

  def create
    Post.create(content: params[:content])
  end
end
