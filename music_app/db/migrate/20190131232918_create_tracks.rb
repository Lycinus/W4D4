class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :title, null: false
      t.integer :ord, null: false
      t.string :lyrics
      t.timestamps
    end

    add_index :tracks, :title
  end
end
