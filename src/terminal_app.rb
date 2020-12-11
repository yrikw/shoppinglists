require('colorize')

begin
  class Shoppinglists
  lists = {}
  
         
  while true
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
     puts "Number of Lists: #{lists.length}" + " / " + "Total Price: $#{number}"
  
     elsif number == 0 or lists.length == 0
     puts "Number of Lists: #{lists.length}" + " / " + "Total Price: $0"
  
     end
     
     puts " --------------- "
  
     lists.each do |key, val|
       puts "✔︎" + " " + "#{key} $#{val}"
     end
  
     puts " --------------- "
  
  when 2  
    puts "Q. What do you want to add?"
    key = gets.chomp
    
    puts "Q. How much is the price?"
    val = gets.to_i
    
    puts "#{key}  $#{val} is added to the list."
    lists.store(key, val)
  
  when 3 
      puts "Q. Which one do you want to delete?"
  
     begin
     i = gets.chomp
     
     lists.fetch("#{i}")
  
     group = lists.delete("#{i}")
     puts "#{i} is deleted in the list."
  
     rescue
     puts "#{i} is not found in the list."
     end
  
  when 4
    begin
    puts "Q. How many people?"
    person = gets
  
    puts
    puts "🍴　One person: $#{number.to_i / person.to_i}"
    puts "👀　Remainder: $#{number.to_i % person.to_i}"
    rescue ZeroDivisionError
    puts "ERROR: Please input a number."
    end
  
  when 5 
    exit
  
  else
     puts "Choose  1 to 4."
  
  end
    puts
    puts "Press any key to go back to Menu"
    gets
    system "clear"
  end
  
  rescue 
    puts "Unexpected error is occured."
    retry
  end
  end