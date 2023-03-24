# frozen_string_literal: true

# This controller is for share a video
class VideosController < ApplicationController
  def new
    @video = Video.new
  end

  def create
    CrawlService.new(current_user, video_params).execute

    redirect_to root_url
  end

  private

  def video_params
    @video_params ||= params.require(:video).permit(:url)
  end
end
