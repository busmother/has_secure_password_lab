module UsersHelper

    def password_match(params)
        params[:password_confirmation] == params[:password] ? true : false
    end
end
