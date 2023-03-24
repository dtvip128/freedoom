class CrawlService
  def initialize(current_user, params)
    @params = params
    @current_user = current_user
    @url = params[:url]
  end

  def execute
    return unless valid_url?

    video = Video.new(@params)
    youtube = VideoInfo.new(@url)

    video.tap do |v|
      v.user = @current_user
      v.title = youtube.title
      v.description = youtube.description
      v.author = youtube.author
      v.date_summit = youtube.date
    end

    video.save!
  end

  private

  def valid_url?
    @url.match(/^(?:https?:\/\/)?(?:www\.)?youtu(?:\.be|be\.com)\/(?:watch\?v=)?([\w-]{10,})/).present?
  end
end
