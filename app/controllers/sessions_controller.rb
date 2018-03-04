class SessionsController < ApplicationController
  def new
  end

  def create
	customer = Customer.find_by_email(params[:email])
	if customer && customer.authenticate(params[:password])
		session[:customer_id] = customer.id
		redirect_to session[:return_to] || root_path
	else
		flash.now[:error] = "Invalid customer email / password combination"
		render 'new'
	end
  end

  def destroy
	if signed_in?
		session[:customer_id] = nil
	else
		flash[:notice] = "You need to log in first"
	end
	redirect_to login_path
  end
  
  def staffnew
  end
  
  def staffcreate  
    staff = Staff.find_by_email(params[:email])
    if staff && staff.authenticate(params[:password])
        session[:staff_id] = staff.id        #store id of the user in the session is user found by email and password
        redirect_to staffs_path
        flash.now[:error] = "Invalid staff email and password combination."        #displays the user/show view redirect_to user
    else
        flash.now[:error] = "Invalid staff email / password combination."
        render 'staffnew'
    end
  end  
  
  def staffdestroy
    if staffsigned_in?
        session[:staff_id] = nil
    else
        flash[:notice] = "You have to be signed in"
    end
    redirect_to stafflogin_path
  end
  
end
