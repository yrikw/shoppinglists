 # require_relative ('./terminal_app')

# Test case 1 ( error handling )
number = 0
number = 20

begin
    puts "Q. How many people?"
    person = gets

    puts
    puts "🍴　One person: " + "$#{number.to_i / person.to_i}"
    puts "👀　Remainder: " + "$#{number.to_i % person.to_i}"
    rescue ZeroDivisionError
    puts "ERROR: Please put a number."
    retry
end

#expected result  => passed
# 🍴　One person: $2
# 👀　Remainder: 0

# if person gets alphabet
begin
    puts "Q. How many people?"
    person = gets

    puts
    puts "🍴　One person: " + "$#{number.to_i / person.to_i}"
    puts "👀　Remainder: " + "$#{number.to_i % person.to_i}"
    rescue ZeroDivisionError
    puts "ERROR: Please put a number."
    retry
end

# Test Case 2 ( loop )
while true
    puts "     Press 1) To show the list"
    puts "     Press 2) To add more items"
    puts "     Press 3) To delete items"
    puts "     Press 4) To split the total price"
    puts "     Press 5) To quit"
   
    menu_input = gets.chomp.to_i
   
    case menu_input
    when 1

      puts "Shopping lists"
     
   when 2  
      
     puts "To Add more itmes"
   
   when 3 

    puts "To delete items"
   
   when 4
     
    puts "To split the total price"
   
   when 5 
     exit
   
   else
      puts "Choose  1 to 5."
   
   end
     puts
     puts "⏪ Press any key to go back to Menu"
     gets
   
   end


# Test case 3 ( def method )

@lists = {"banana" => 80}

    def total
        @number = @lists.values.inject(:+)
        puts "  Total items: #{@lists.length}" + " / " + "Total Price: $#{@number}"
    end

    puts total

    #expected result
    #Total items: 1 / Total Price: $80