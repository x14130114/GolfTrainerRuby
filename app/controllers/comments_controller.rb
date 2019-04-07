class CommentsController < ApplicationController
	# creating comments on the trainer profile including the user id who commented
	def create
	    @trainer = Trainer.find(params[:trainer_id])
	    @comment = @trainer.comments.create(comment_params.merge(user_id: current_user.id))
	    redirect_to trainer_path(@trainer)
	end

	# parameters for creating the comments with user_id and body
	def comment_params
        params.require(:comment).permit(:user_id, :body)
    end
end
