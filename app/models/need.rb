class Need < ApplicationRecord
  has_many :project_needs
  has_many :projects, through: :project_needs
end
