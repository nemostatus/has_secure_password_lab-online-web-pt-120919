class UsersController < ApplicationController 
    def new
       @user = User.new
    end  
    def create
      @user = User.create(user_params)
      if @user.save 
        session[:user_id] = @user.id 
      else 
        
        redirect_to  '/users/new'
   end 
end 

def authenticate
end

   private 

   def user_params 
    params.require(:user).permit(:name, :password, :password_confirmation)
   end

end