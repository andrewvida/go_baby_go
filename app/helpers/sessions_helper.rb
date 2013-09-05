module SessionsHelper
  def sign_in(parent)
    remember_token = Parent.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    parent.update_attribute(:remember_token, Parent.encrypt(remember_token))
    self
  end

  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end

  def signed_in?
    !current_parent.nil?
  end

  def current_user=(parent)
    @current_parent = parent
  end

  def current_parent
    remember_token = Parent.encrypt(cookies[:remember_token])
    @current_parent ||= Parent.find_by(remember_token: remember_token)
  end

  def current_parent?(parent)
    parent == current_parent
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = request.url
  end
end
