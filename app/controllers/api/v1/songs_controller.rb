class SongsController < ApplicationController
  def index
    render json: {
      Song.all.map do |song|
        :song => {
          :title => song.title,
          :length => song.length,
        }
      end
    }
  end
end
