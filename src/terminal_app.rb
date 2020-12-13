require('colorize')
require('httparty')
require('tty-prompt')
require('artii')

prompt = TTY::Prompt.new
@a = Artii::Base.new


@lists = {}
@number = {}
$artii = {}
    
  while true
    def shoppinglists
      puts "---------------------------------------------"
      puts "          ⭐️ Shopping Lists ⭐️          ".bold
      puts "---------------------------------------------"
      end

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

     puts "            --------------- "
     puts
  

    def listitems
     @lists.each_with_index do |(key, val), i|
       puts "          #{i+1}.  #{key} $#{val}".italic
     end
     return
    end

   puts listitems


     puts
     puts "            --------------- "
       
  when 2  
    puts shoppinglists
    puts total
    
    puts "              Add items".light_blue.bold
    puts
    puts "Q. What do you want to add?"
    key = gets.chomp
    
    puts
    puts "Q. How much is the price?"
    val = gets.to_f
    
    puts
    puts "#{key}".green.italic + " / " + "$#{val}".green.italic + " is added to the list."

    @lists.store(key, val)


  when 3 
    
    puts shoppinglists
    puts total

    puts "              Delete items".light_blue.bold
    puts

    puts "Q. Which items do you want to delete?"
  
     begin
     deleteitem = gets.chomp
     
     @lists.fetch("#{deleteitem}")
  
     @lists.delete("#{deleteitem}")
     puts
     puts "#{deleteitem}".green.italic + " is deleted in the list."
  
     rescue
     puts "#{deleteitem} is not found in the list."
     end     
  
  when 4
    puts shoppinglists

    puts "              Share the bills".light_blue.bold

    begin
    puts "Q. How many people?"
    person = gets.to_f
    puts
    puts "🍴　One person: " + "$#{@number.to_i / person.to_i}".green.italic
    puts "👀　Remainder: " + "$#{@number.to_i % person.to_i}".green.italic
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
    puts "⏪ " + "Press any key to go back to Menu".blink
    gets
    system "clear"
  end