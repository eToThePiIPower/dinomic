require 'rails_helper'

RSpec.describe Project, type: :model do
  it { should belong_to :organization }
  it { should have_many :project_needs }
  it { should have_many(:needs).through(:project_needs) }
  it { should have_many :bookings }
end
