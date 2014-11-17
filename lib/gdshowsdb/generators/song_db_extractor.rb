module Gdshowsdb
  include Gdshowsdb::Utils

  class SongDBExtractor
    def initialize(songs)
      @songs = songs
    end

    def extract
      @songs.map do |song|
        song_map = convert_to_sym(song.attributes)
        song_map[:name] = song.song_ref.name
        song_map.reject {|k,v| k == :song_ref_uuid }
      end
    end
  end
end