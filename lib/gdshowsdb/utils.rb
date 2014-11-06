module Gdshowsdb
  module Utils
    def encore?(sets, set)
      last = (sets.size - 1) == sets.index(set)
      song_size = set[:songs].size          
      song_size < 3 && last
    end
  end
end