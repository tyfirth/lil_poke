class LilPoke::Cli

    def start
        puts "Welcome, Lil' buddy! Ready to go your Pokemon On?"
        menu
    end

    def menu
        puts "Select a Pokemon's number below to learn more or 'exit.'"
        list_pokemon
        LilPoke::Cli.user_input
        #show_pokemon
    end

    def list_pokemon
        LilPoke::Api.get_names.each.with_index(1) do |p, i|
             puts "#{i}. #{p}"
        end
     end


     def self.user_input(input=nil)
        input = gets.strip.downcase
        if input == "exit"

            LilPoke::Cli.goodbye
        else
            sel = input.strip.to_s
            LilPoke::Api.get_index_url(sel) #Do no change this - But something in here is not working
        end
     end

     #def show_pokemon(poke)
     #   LilPoke::Api.get_index_url(poke)
     #
     #   puts "Name: #{poke.name}"
     #   puts "Starting HP: #{poke.hp}"
     #   puts "Starting Attack: #{poke.atk}"
     #   puts "Starting Defense: #{poke.dfn}"
     #   puts "Types: #{poke.type_1} / #{poke.type_2}"
     #end

    def self.goodbye
        puts "Catch 'em all!"
    end

end