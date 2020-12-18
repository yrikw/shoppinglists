require('tty-prompt')
@prompt = TTY::Prompt.new

def menu_input_select
@answer = @prompt.select("TOP MENU",["1) Check the list", "2) Add items", "3) Delete items", "4) Share the bills", "5) Quit"])
end

def shoppinglists
    puts "---------------------------------------------"
    puts "          ⭐️ Shopping Lists ⭐️          ".bold
    puts "---------------------------------------------"
 end


def total
    if @number = @lists.values.inject(:+)
    puts "  Total items: #{@lists.length}" + " / " + "Total Price: $#{@number}"
    puts

    else @number == 0 or @lists.length == 0
    puts "   Total items: #{@lists.length}" + " / " + "Total Price: $0"
    puts
    end
 end

 def menu1
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
end

def menu2
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
end

def menu3 
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
 end


 def menu4
    puts "              Share".light_blue.bold

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
end

def menu5
    puts  @a.asciify('Enjoy').light_blue
    puts  @a.asciify('Shopping!').magenta
    exit
end