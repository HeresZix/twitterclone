class PagesController < ApplicationController
  def index
  end

  def home
    @posts = Post.all
  end

  def profile
    if(User.find_by_username(params[:id]))
      @username = params[:id]
      @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
      @newPost = Post.new
    else
      redirect_to root_path, :notice=> "User not found!"
    end
  end

  def explore
    @posts = Post.all
  end
end
