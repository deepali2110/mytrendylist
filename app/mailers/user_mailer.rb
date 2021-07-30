class UserMailer < ApplicationMailer
        def new_user_email
          @user = params[:user]
      
          mail(to:@user.email, subject: "Welcome to Trendy List ! We have exciting clothing trends for you..!")
        end
      
end
