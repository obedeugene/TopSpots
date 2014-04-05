class PostsController < ApplicationController

 	def index
 		@posts = Post.all
 	end


 	def show
 		@post = Post.find(params[:id])
 	end

 	def new
 		@post = Post.new

 	end

 	def create
 		@post = Post.new(post_params)

 		if @post.save
 		   redirect_to posts_path, notice: "Cheers! You succefully added a new Spot!"
 		else  
 		   render "new"
 		end  
 	end

 	private

    def post_params
      params.require(:post).permit(:title, :content, :location)
    end


 	def destroy
 		
 	end

end
