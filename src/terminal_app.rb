require('colorize')

begin
@lists = {}
@number = {}

def shoppinglists
puts "---------------------------------------------"
puts "          ⭐️ Shopping Lists ⭐️          "  
puts "---------------------------------------------"
end
    
  while true
   puts shoppinglists

   def total
      if @number = @lists.values.inject(:+)
      puts "  Number of items: #{@lists.length}" + " / " + "Total Price: $#{@number}"
  
      else @number == 0 or @lists.length == 0
      puts "   Number of items: #{@lists.length}" + " / " + "Total Price: $0"
      end
   end
   puts total

   puts "     Press 1) To show the list"
   puts "     Press 2) To add more items"
   puts "     Press 3) To delete items"
   puts "     Press 4) To split the total price"
   puts "     Press 5) To quit"
  
   menu_input = gets.chomp.to_i
   system "clear"
  
   case menu_input
   when 1
     
     puts shoppinglists

     puts total

     puts "            --------------- ".yellow
     puts
     
     @lists.each do |key, val|
       puts "             ✔︎" + "   " + "#{key} $#{val}"
     end

     puts
     puts "            --------------- ".yellow
       
  when 2  
    puts shoppinglists
    puts total

    puts "Q. What do you want to add?".light_blue
    keys = gets.chomp
    
    puts
    puts "Q. How much is the price?".light_blue
    values = gets.to_f
    
    puts
    puts "#{keys}".green + " / " + "$#{values}".green + " is added to the list."

    addnew = {}
    @lists.merge!(addnew)

    end


  when 3 
    
    puts shoppinglists
    puts total

    puts "Q. Which items do you want to delete?".light_blue
  
     begin
     deleteitem = gets.chomp
     
     @lists.fetch("#{deleteitem}")
  
     @lists.delete("#{deleteitem}")
     puts
     puts "#{deleteitem}".green + " is deleted in the list."
  
     rescue
     puts "#{deleteitem} is not found in the list."
     end

    end

     
  
  when 4
    puts shoppinglists
    puts total

    begin
    puts "Q. How many people?".light_blue
    person = gets.to_f
    puts
    puts "🍴　One person: " + "$#{@number.to_i / person.to_i}"
    puts "👀　Remainder: " + "$#{@number.to_i % person.to_i}"
    rescue ZeroDivisionError
    puts "ERROR: Please put a number.".red
    retry
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

rescue
  puts "Unexpeted error is occurred."
end