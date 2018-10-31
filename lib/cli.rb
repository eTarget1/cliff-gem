class CliffGem::CLI

  def call
    list_deals
     menu
    goodbye
  end

  def list_deals
     puts "welcome, today's the daily-Webcam."
      puts "---------------------------------------------------------------------------------------"
      puts

     @deals = CliffGem::Deal.today
     @deals.each.with_index(1) do |deal, i|
       puts "#{i}.#{deal.name} - #{deal.price} - #{deal.color}- #{deal.dimension}- #{deal.weight} - #{deal.avaibility}"
  end

  def menu
    input = nil
      while input != "exit"
        puts "Enter the number of the deal you would like to have info on or type list to see the deal agin or type exit to exit:"
        puts ""
        input = gets.strip.downcase

        if input.to_i > 0 &&  input.to_i < 3
          the_deal = @deals[input.to_i-1]
          puts "#{the_deal.name} - #{the_deal.price} #{the_deal.color}- #{the_deal.dimension} -#{the_deal.weight} #{the_deal.avaibility}"

          # puts @deals[input.to_i-1]
        elsif input == "list"
          list_deals
        else
          puts "Not sure what you want, type list or exit"

         end
        end
      end
  end

  def goodbye
    puts "See you tomorrow for more deal!!!"
  end

end
