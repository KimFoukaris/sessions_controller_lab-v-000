class SessionsController < ApplicationController

  def new
  end

  def create
    if session[:name].nil? || session[:name] == ''
      raise params.inspect
      redirect_to '/login'
    else
      session[:name] = params[:name]
      raise params.inspect
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end

end
