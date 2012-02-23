class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def find_cart
    @_cart ||= Cart.new(session[:cart])
  end
end
