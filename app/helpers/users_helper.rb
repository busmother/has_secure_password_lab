module UsersHelper

    def password_match(params)
        params[:user][:password_confirmation] == params[:user][:password] ? true : false
    end
    
end
