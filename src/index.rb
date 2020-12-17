require_relative('./methods')
require('colorize')
require('httparty')
require('tty-prompt')
require('artii')

begin
prompt = TTY::Prompt.new
@a = Artii::Base.new


@lists = {}
@number = {}
$artii = {}
    
  while true

   shoppinglists
   total
   menu_input_select
  
   system "clear"
  
   case @answer
   when "1) Check the list"
     shoppinglists
     total
     menu1
       
  when "2) Add items"  
    shoppinglists
    total
    menu2

  when "3) Delete items"
    shoppinglists
    total
    menu3
  
  when "4) Share the bills"
    shoppinglists
    total
    menu4
  
  when  "5) Quit"
    menu5

  end
    puts
    puts "⏪ " + "Press any key to go back to Top menu".blink
    gets
    system "clear"
  end
rescue 
  puts"Unexpected error is occured."
end