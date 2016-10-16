module Api
  module V1
    class MusiciansController < ApplicationController
      def index
        render json: {
          :musicians => Musician.all.map do |musician|
            {
              :id=>musician.id,
              :name=>musician.name,
              :instrument=>musician.instrument
            }
          end
        }
      end

      def show
        gig = Musician.find(musicians_params[:id])
        render json: {
          :id=>musician.id,
          :name=>musician.name,
          :instrument=>musician.instrument
        }
      end

    private
      def musicians_params(params)
        params.permit(:id)
      end
    end
  end
end
