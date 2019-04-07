class CommentsController < ApplicationController
	def create
	    @trainer = Trainer.find(params[:trainer_id])
	    @comment = @trainer.comments.create(comment_params.merge(user_id: current_user.id))
	    redirect_to trainer_path(@trainer)
	end

	def comment_params
        params.require(:comment).permit(:user_id, :body)
    end
end
