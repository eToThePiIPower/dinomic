require 'rails_helper'

RSpec.describe ProjectNeed, type: :model do
  it { should belong_to :project }
  it { should belong_to :need }
end
