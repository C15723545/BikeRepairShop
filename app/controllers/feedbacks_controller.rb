class FeedbacksController < ApplicationController
	before_action :authorise
	
	def new
		#@customer = Customer.find params[:customer_id]
	end
	
	def create
		@repair = Repair.find params[:repair_id]
		@feedback = @repair.feedbacks.new(feedback_params)
		@feedback.customer_id = @current_user.id
		@feedback.save
		
		respond_to do |format|
			format.html{redirect_to @repair}
		end	
	end
	
	private
	def feedback_params
		params.require(:feedback).permit(:content, :repair_id, :customer_id)
	end
end
