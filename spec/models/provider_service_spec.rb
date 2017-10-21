require 'rails_helper'
require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = 'fixtures/vcr_cassettes'
  config.hook_into :webmock
end

RSpec.describe ProviderService, type: :model do
  describe '.provider_list' do
    context 'when there are no needs' do
      before do
        @pvs = ProviderService.new
      end

      it 'returns all the providers' do
        VCR.use_cassette('getProviders') do
          @list = @pvs.provider_list
          expect(@list.count).to eq 527
        end
      end
    end

    context 'when there are needs' do
      before do
        @pvs = ProviderService.new([Need.create(name: 'Plumbing')])
      end

      it 'returns all the providers' do
        VCR.use_cassette('getProviders') do
          @list = @pvs.provider_list
          expect(@list.count).to eq 54
        end
      end
    end
  end
end
