module Fera
  class HooksController < ApplicationController
    include Fera::Apps::Controllers::Hooks

    ##
    # POST /fera/hooks/review_create
    def review_create
      Rails.logger.info("Received webhook for store ##{ @store.id } for review ##{ params[:id] }.")

      head :ok
    end
  end
end
