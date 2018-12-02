class AdminController < ApplicationController
	def index 
		@posts = Post.page params[:page]
	end

	def new
		@post = Post.new	
	end

	def create
		@post = Post.new(post_params)
		respond_to do |format|
		  if @post.save
			format.html { redirect_to @post, notice: 'Post was successfully created.' }
			format.json { render :show, status: :created, location: @post }
		  else
			format.html { render :new }
			format.json { render json: @post.errors, status: :unprocessable_entity }
		  end
		end
	end

	def edit
		@post = Post.find(params[:id])		
	end

	def update
		@post = Post.find(params[:id])		
		if @post.update(post_params)
		  flash[:success] = "Post updated"
		  redirect_to @post
		else
		  render 'edit'
		end
	  end
	  
	  # DELETE /users/:id
	  def destroy
		@post = Post.find(params[:id])	
		@post.destroy
		respond_to do |format|
			format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
			format.json { head :no_content }
		  end
	  end
	


	private 

	def post_params
		params.require(:post).permit(:title, :content, :image)
	end
	
end