class PostController < ApplicationController
  def index

    @posts = Post.all.order(created_at: :desc)

  end

  def show
    @post =Post.find_by(id:params[:id])
  end

  def new
  end

  def create
    @post=Post.new(content:params[:content])
    @post.save
    redirect_to("/post/index")
  end
  
  def edit
    @post=Post.find_by(id:params[:id])
  end
  
  def update
    @post=Post.find_by(id:params[:id])
    @post.content=params[:content]
    if @post.save
      redirect_to("/post/index")
    else
      render("post/edit")
    end
  end
  
  def destroy
    redirect_to("/post/index")
  end



end
