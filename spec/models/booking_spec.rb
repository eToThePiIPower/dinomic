require 'rails_helper'

RSpec.describe Booking, type: :model do
  it { should belong_to :project }

  describe '.provider' do
    it 'returns a Hash' do
      @booking = create :booking
      expect(@booking.provider).to be_a(Hash)
    end

    it 'contains a name' do
      @booking = create :booking
      expect(@booking.provider['name']).to eq "Vanguard Emergency Management"
    end
  end
end
