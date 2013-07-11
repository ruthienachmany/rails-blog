class PostController < ApplicationController

# GET /posts
  def index
    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @posts = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @posts = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/1/edit
  def edit
    @posts = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @posts = Post.new(params[:posts])

    respond_to do |format|
      if @posts.save
        format.html { redirect_to @posts, notice: 'Post was successfully created.' }
        format.json { render json: @posts, status: :created, location: @posts }
      else
        format.html { render action: "new" }
        format.json { render json: @posts.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @posts = Post.find(params[:id])

    respond_to do |format|
      if @posts.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @posts.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @posts = Post.find(params[:id])
    @posts.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
end




end
