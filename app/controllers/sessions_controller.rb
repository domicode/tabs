class SessionsController < ApplicationController

    def new
      if current_user
        redirect_to current_user
      end
    end

    def create
      if login(params[:email], params[:password])
        flash[:notice] = "Login successful"
        redirect_back_or_to :root
      else
        flash[:notice] = "Login failed. Try again."
        render :new
      end
    end

    def destroy
      logout
      flash[:notice] = "Logout successful"
      redirect_back_or_to :root
    end

end
