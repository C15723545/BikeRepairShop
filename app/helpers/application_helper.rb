module ApplicationHelper
	def signed_in?
		if session[:customer_id].nil?
			return
		else
			@current_user = Customer.find_by_id(session[:customer_id])
		end
	end
	
	def authorise
		unless signed_in? 
			session[:returned_to] = request.fullpath
			redirect_to login_path, :notice => "Please sign in to access this page"
		end
	end
	
	def euro (amount)
		number_to_currency(amount, :unit => '€')
	end
	
	def staffsigned_in?
		if session[:staff_id].nil?
			return
		else
			@staffcurrent_user = Staff.find_by_id(session[:staff_id])
		end
	end
	
	def staffauthorise
		unless staffsigned_in? 
			session[:returned_to] = request.fullpath
			redirect_to stafflogin_path, :notice => "Staff must sign in to access this page"
		end
	end
		  
	
end