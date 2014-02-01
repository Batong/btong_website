class CommentsController < ApplicationController
  before_filter :find_post,
    :only => [:show, :index, :new, :create, :edit, :update, :destroy]
    
  def index
    @comments = @post.comments
  end

  def show
    @comment = @post.comments.find(params[:id])
  end

  def new
    @comment = @post.comments.build
  end

  def create
    @comment = @post.comments.build(params[:comment])
    
    respond_to do |format|
     if @comment.save
        format.html { redirect_to(post_comments_path(@post), :notice => 'Post was successfully created.') }
        format.xml  { render :xml => post_comments_path(@post), :status => :created, :location => home_index_url }
     else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
     end
    end
  end

  def edit
    @comment = @post.comments.find(params[:id])
  end

  def update
    if @comment.update_attributes(params[:comment])
      redirect_to post_comment_url(@post, @comment)
    else
      render :action => "edit"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to post_comments_path(@post) }
      format.xml  { head :ok }
    end
  end
  
    private
    def find_post
      @post = Post.find(params[:post_id])
    end
end