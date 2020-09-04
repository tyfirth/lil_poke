class LilPoke::Api

    def self.get_names
        poke_url = BASE_URL
        res = RestClient.get(poke_url)
        hsh = JSON.parse(res)
        names_array = hsh["results"].map {|x| x["name"].capitalize}
    end

    def self.get_index_url(input)
       
        poke_url = BASE_URL + input
        res = RestClient.get(poke_url)
        parsed = JSON.parse(res)
        #stat_hsh = {}

        poke_name = parsed["name"].capitalize

        poke_id = parsed["id"]
        poke_hp = parsed["stats"][0]["base_stat"]
        poke_atk = parsed["stats"][1]["base_stat"]
        poke_dfn = parsed["stats"][2]["base_stat"]
        type_1 = parsed["types"][0]["type"]["name"].capitalize
        #type_2 = parsed["types"][1]["type"]["name"].capitalize

        poke = LilPoke::Pokemon.new(poke_name, poke_id, poke_hp, poke_atk, poke_dfn, type_1)

        #binding.pry
       
        puts "Name: #{poke.name}"
        puts "ID: #{poke.id}"
        puts "Starting HP: #{poke.hp}"
        puts "Starting Attack: #{poke.atk}"
        puts "Starting Defense: #{poke.dfn}"
        puts "Type: #{poke.type_1}"
        #puts "Type 2: #{poke.type_2}"
    
        #binding.pry
    end

    

end