# frozen_string_literal: true

class HomesController < ApplicationController
  def index
    @videos = Video.all
  end
end
