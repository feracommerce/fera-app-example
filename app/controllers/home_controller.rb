class HomeController < ApplicationController
  include Fera::Apps::Controllers::Base

  def index
    Fera::API.configure(@store.fera_auth_token, api_url: ENV.fetch("FERA_API_URL", nil)) if @store.try(:connected_to_fera?) # Not thread-safe FYI
  end

  def disconnect
    if @store.present?
      @store.disconnect_fera! if @store.connected_to_fera?
      @store.destroy!

      Rails.logger.info("User disconnected store ##{ @store.id } completely.")
    end

    session.delete(:store_id)

    redirect_to root_path, notice: "App disconnected and all connections have been removed."
  end
end
