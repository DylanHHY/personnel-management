class ApplicationController < ActionController::Base
  helper_method :current_user, :user_signed_in?

  private

  def record_not_found
    render file: "#{Rails.root}/public/404.html",
           layout: false,
           status: 404
  end

  # 記憶 memorization
  def current_user
    @_user ||= User.find_by(id: session[:user_session])
  end

  def user_signed_in?
    session[:user_session] && current_user
  end

  def authenticate_user!
    redirect_to sign_in_users_path if not user_signed_in?
  end
end
