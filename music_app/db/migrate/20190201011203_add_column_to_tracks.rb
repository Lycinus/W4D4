class AddColumnToTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :is_bonus?, :boolean
  end
end
