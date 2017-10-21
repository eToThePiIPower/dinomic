class Project < ApplicationRecord
  belongs_to :organization
  has_many :project_needs
  has_many :needs, through: :project_needs

  def all_needs=(names)
    self.needs = names.split(',').map do |name|
      Need.where(name: name.strip).first_or_create!
    end
  end

  def all_needs
    self.needs.map(&:name).join(', ')
  end
end
