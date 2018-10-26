class CliffGem::CLI

  def call
    list_deals
    menu
    goodbye
  end

  def list_deals
    puts "welcome, today's the daily-Webcam."
    puts <<-DOC.gsub!(/^\s+|\s+$/, "")
      1 Webcam 720P HD -  Colour Name: HD92 720P  - £14.99
      2  Mpow PC Headset - Colour Name: Black - £18.99
    DOC
  end

  def menu
    input = nil
      while input != "exit"
        puts "Enter the number of the deal you would like to have info on or type list to see the deal agin or type exit to exit:"
        input = gets.strip.downcase
        case input
        when "1"
          puts "More info on deal 1..."
        when "2"
          puts "more info on deal 2..."
        when "list"
          list_deals
        else
          puts "Not sure what you want, type list or exit"
        end
      end
  end

  def goodbye
    puts "See you tomorrow for more deal."
  end

end
