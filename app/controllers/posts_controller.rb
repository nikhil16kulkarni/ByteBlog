# Rails responds by default 204 error: No no content response for action



#Defining methods/actions

class PostsController < ApplicationController

  http_basic_authenticate_with name:'nikhil16kulkarni', password: 'password', except:[:index, :show]

  def index
    @posts = Post.all #Display all the posts that are submitted
  end


  def show
    @post = Post.find(params[:id]) #Find the post we're interested in using "Post.find()"", Get the id of the post using "params[:id]"

    #Now we need to create a view


  end




  def new
    # Add new post - It should have a view (view/posts/new.html.erb)
    # erb - embedded ruby
    # Can be accessed - localhost:3000/posts/new
    @post = Post.new
  end


  def create
    # render plain: params[:post].inspect
    # @ is used to define variable



    # @post = Post.new(params[:post]) # Commenting due to security reason - The line below accesses only the required parameters


    @post = Post.new(post_params) #Post is a class

    if (@post.save) #Save new post records to database, return true if record is successfully saved
      redirect_to @post # Redirect to the page of newly created post

    else
      render 'new'

    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if (@post.update(post_params)) #Save new post records to database, return true if record is successfully saved
      redirect_to @post # Redirect to the page of newly created post
    else
      render 'edit'
    end

  end


  def destroy
    @post = Post.find(params[:id])
    begin
      @post.destroy
      redirect_to posts_path, notice: 'Post deleted successfully!'
    rescue ActiveRecord::RecordNotDestroyed => e
      flash.alert = 'Error deleting post: ' + e.message
      redirect_to posts_path
    end
  end




  private
    def post_params
      # Create private methods for the security purposes - Only to access the required parameters
      params.require(:post).permit(:title, :body)
    end


end
