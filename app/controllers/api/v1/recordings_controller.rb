module Api
  module V1
    class RecordingsController < ApplicationController
      def index
        render json: {
          recordings: Recording.all.map do |song|
            {
              :id => song.id,
              :src => song.src,
              :title => song.title,
              :gig_id => song.gig_id,
            }
          end
        }
      end

      def show
        recording = Recording.find(recording_params.id)
        render json: {
          :recording => {
            :id => recording.id,
            :src => recording.src,
            :title => recording.title,
            :gig_id => recording.gig_id,
          }
        }
      end

      private
        def recording_params(params)
          params.require('recording').permit(:id, :src, :title, :gig_id)
        end
    end
  end
end
