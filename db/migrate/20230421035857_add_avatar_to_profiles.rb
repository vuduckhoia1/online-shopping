class AddAvatarToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :avatar, :string, after: :id
  end
end
