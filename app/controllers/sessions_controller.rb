class SessionsController < ApplicationController
  before_action :set_session, only: %i[ show edit update destroy ]

  def new #sign in
    @user = User.new
  end

  def create #once you've signed up / signed in
    # binding.pry
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to '/welcome'
    else
      redirect_to '/login'
    end
  end

end
