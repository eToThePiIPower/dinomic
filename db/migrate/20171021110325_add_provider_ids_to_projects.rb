class AddProviderIdsToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :provider_ids, :integer, array: true, default: []
  end
end
