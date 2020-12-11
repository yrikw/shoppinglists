require('colorize')



  class Shoppinglists
  lists = {}
    
  while true
   puts "🍀 Menu 🍀"
   puts "Press 1) To show the lists"
   puts "Press 2) To add more lists"
   puts "Press 3) To delete lists"
   puts "Press 4) To split the bills"
   puts "Press 5) To quit"
   puts " --------------- "
  
   menu_input = gets.chomp.to_i
   system "clear"
  
   case menu_input
   when 1
     puts "⭐️ Shopping Lists ⭐️"
     
     if number = lists.values.inject(:+)
     puts "Number of items: #{lists.length}" + " / " + "Total Price: $#{number}"
     puts

     elsif number == 0 or lists.length == 0
     puts "Number of Lists: #{lists.length}" + " / " + "Total Price: $0"
     puts

     end
     
     puts " --------------- ".yellow
     puts
  
     lists.each do |key, val|
       puts "✔︎" + " " + "#{key} $#{val}"
     end

     puts
     puts " --------------- ".yellow
  
  when 2  
    puts "Q. What do you want to add?".light_blue
    key = gets.chomp
    
    puts
    puts "Q. How much is the price?".light_blue
    val = gets.to_i
    
    puts
    puts "#{key}".green + " / " + "$#{val}".green + " is added to the list."
    lists.store(key, val)
  
  when 3 
      puts "Q. Which items do you want to delete?".light_blue
  
     begin
     i = gets.chomp
     
     lists.fetch("#{i}")
  
     group = lists.delete("#{i}")
     puts
     puts "#{i}".green + " is deleted in the list."
  
     rescue
     puts "#{i} is not found in the list."
     end
  
  when 4
    begin
    puts "Q. How many people?".light_blue
    person = gets.to_i
    
    puts
    puts "🍴　One person: " + "$#{number.to_i / person.to_i}".green
    puts "👀　Remainder: " + "$#{number.to_i % person.to_i}".green
    rescue ZeroDivisionError
    puts "ERROR: Please input a number.".red
    end
  
  when 5 
    exit
  
  else
     puts "Choose  1 to 5.".red
  
  end
    puts
    puts "⏪ Press any key to go back to Menu"
    gets
    system "clear"
  end
   
  end