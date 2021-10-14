require 'colorize'

class Tile
    attr_accessor :flagged,:revealed,:neighbour_bombs_count
    def initialize(bombed = false)
        @bombed = bombed
        @flagged  = false
        @revealed = false
        @neighbour_bombs_count = 0
    end

    def reveal
        @revealed = true
    end

    def to_s
        return "F".colorize(:red) if @flagged
        @revealed ? "_" : "*"
    end

    def flag
        @flagged = true
    end

    def explode?
        @bombed
    end
end
