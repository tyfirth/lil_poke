class LilPoke::Pokemon

    attr_accessor :name, :id, :hp, :atk, :dfn, :type_1, :type_2
    @@all = []
    @@moves = []

    
    def initialize(name = nil, id = nil, hp = nil, atk = nil, dfn = nil, type_1 = nil, type_2 = nil)
        @name = name
        @id = id
        @hp = hp
        @atk = atk
        @dfn = dfn
        @type_1 = type_1
        @type_2 = type_2
        @@all << self
    end


    def self.all
        @@all
    end

    #def self.moves

    #end



end