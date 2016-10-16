module Api
  module V1
    class GigsController < ApplicationController
      def index
        render json: {
          :gigs => Gig.all.map do |gig|
            { :id=>gig.id,
              :date=>gig.date,
              :location=>gig.location,
              :time=>gig.time,
              :recording_id=>gig.recording_id,
              :setlist_id=>gig.setlist_id }
          end
        }
      end

      def show
        gig = Gig.find(gigs_params[:id])
        render json: {
          :id=>gig.id,
          :date=>gig.date,
          :location=>gig.location,
          :time=>gig.time,
          :recording_id=>gig.recording_id,
          :setlist_id=>gig.setlist_id
        }
      end


      private
        def gigs_params
          params.permit(:id)
        end
    end
  end
end
