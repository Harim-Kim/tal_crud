class HomeController < ApplicationController
  def index
    @posts = Post.all.reverse
  end

  def create
    Post.create(title: params[:input_title],subtitle: params[:input_subtitle],
                content: params[:input_content], view:0)
    redirect_to "/home/index"
  end
  
  def new
  end
  
  def read
    @one_post = Post.find(params[:id_of_post])
    @one_post.view = @one_post.view + 1
    @one_post.save
  end

  def update
    Post.find(params[:id_of_update]).update(title: params[:update_title], content: params[:update_content], subtitle: params[:update_subtitle])
    # redirect_to 'home/read/#{params[:id_of_update]}'
    id = params[:id_of_update]
    redirect_to "/home/read/#{id}"

  end

  def update_post
    @updating = Post.find(params[:id])
    
  end

  def delete
    Post.find(params[:post_id]).destroy
      redirect_to 'home/index'
  end
end
