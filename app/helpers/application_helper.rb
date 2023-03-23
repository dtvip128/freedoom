# frozen_string_literal: true

# This module provides support for views
module ApplicationHelper
  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end
end
