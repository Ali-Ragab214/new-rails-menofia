class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

 def index
  @posts = Post.all
 end

def show
end

def new
  @post = Post.new
end


end



def set_post
  @post = Post.find(params[:id])
end