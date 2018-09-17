class PagesController < ApplicationController
  def index
  end

  def home
        @posts = Post.all
       @newPost = Post.new
  end

  def profile
    
    
    #grab the username
    
    if(User.find_by_username(params[:id]))
    @username = params[:id]
  else
     redirect_to root_path, :notice=> "User not Found!"
  end
  
    @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id) # only current user's posts
    @newPost = Post.new
    
     @toFollow = User.all.last(5)
  end
  
  
  
  def explore
        @posts = Post.all
  end
  
  
  
  
  
end
