class VideoController < ApplicationController

  def new
    @video = Video.new
  end

  def video_params
    params.require(:video).permit(:link)
  end

end
