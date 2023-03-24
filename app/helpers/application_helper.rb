# frozen_string_literal: true

# This module provides support for views
module ApplicationHelper
  def current_user
    @current_user ||=
      if Rails.env.test?
        User.first
      elsif session[:user_id]
        User.find_by_id(session[:user_id])
      end
  end
end
