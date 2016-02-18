class MainController < ApplicationController

  def password_check
    @result_str
    @user = params[:user_name].to_s
    @pass = params[:password].to_s

    #check if username field is empty
    # if params.has_key?(:user_name) && !params[:user_name].strip.empty?
    #   @user_name = params[:user_name]
    # end
    #
    #
    # #check if password field is empty
    # if params.has_key?(:password) && !params[:password].strip.empty?
    #   @pass = params[:password]
    # end


    #check if username and password entered is less than 6 characters
    if @user.length < 6
      @result_str = "Username must be at least 6 characters"
    elsif @pass.length < 6
        @result_str = "Password must be at least 6 characters"
    elsif @user.include?("#") || @user.include?("!") || @user.include?("$")
      @result_str = "Username cannot include !, #, or $"
    elsif @pass.include?("#") || @pass.include?("!") || @pass.include?("$")
      @result_str = "Password cannot include !, #, or $"
    else
      @result_str = "Congratulations you have just sent your information to identity thieves in the throws of thieving identities... and cussing!!!"
    end

    render "password_check.html.erb"
  end #end of method
end #end of class
