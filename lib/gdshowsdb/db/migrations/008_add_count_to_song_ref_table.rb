class AddCountToSongRefTable < ActiveRecord::Migration

  def up
    add_column :song_refs, :song_occurences_count, :integer, :default => 0
  end

  def down
    remove_column :song_refs, :song_occurences_count
  end

end