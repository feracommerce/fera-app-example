class Store < ApplicationRecord
  include ::Fera::Apps::Models::Store

  ##
  # This gets triggered by the Fera::Apps::Models::Store concern #install_fera! method.
  def install_fera_webhooks!
    hook = Fera::Webhook.where(event_name: :review_create).try(:first)
    hook ||= Fera::Webhook.new(event_name: :review_create)
    hook.is_enabled = true
    hook.url = "#{ ENV.fetch('BASE_APP_URL', nil) }/fera/hooks/review_create"
    hook.save!
  end

  private

  ##
  # Here's an example of how you can grab content from the Fera API.
  # If you're not using this method then you can remove it.
  #
  # @param fera_review_id [String]
  # @return [::Fera::Review]
  def fetch_fera_review(fera_review_id)
    return nil if fera_review_id.blank?

    fera_api do
      Fera::Review.find(fera_review_id)
    rescue ActiveResource::ResourceNotFound
      nil
    end
  end
end
