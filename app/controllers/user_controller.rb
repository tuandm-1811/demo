class UserController < ApplicationController
    before_filter :authenticate_user!

    def is_signed_in?
        if !user_signed_in?
           redirect_to root_path
        else 
           redirect_to  new_user_registration_path
        end
     end
end
