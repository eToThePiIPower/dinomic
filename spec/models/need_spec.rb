require 'rails_helper'

RSpec.describe Need, type: :model do
  it { should have_many :project_needs }
  it { should have_many(:projects).through(:project_needs) }
end
