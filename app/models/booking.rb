class Booking < ApplicationRecord
  belongs_to :project

  def provider
    @provider_service = ProviderService.new
    @provider_service.provider_list.detect{|p| p['id'] = provider_id }
  end
end
