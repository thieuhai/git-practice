class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SesionsHelper

  def logged_in_user
    return if logged_in?
    store_location
    flash[:danger] = "Đăng nhập trước khi sử dụng tính năng này!"
    redirect_to login_url
  end
end
