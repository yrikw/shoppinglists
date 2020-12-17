require_relative('./methods')
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

   shoppinglists
   total
   menu_input = menu_input_select
   system "clear"
  
   case menu_input
   when 1
     
     shoppinglists
     total
     menu1
       
  when 2  
     shoppinglists
     total
     menu2

  when 3 
    shoppinglists
    total
    menu3

  
  when 4
    menu4
  
  when 5 
    menu5


  else
     puts "Choose  1 to 5.".red
  
  end
    puts
    puts "⏪ " + "Press any key to go back to Top menu".blink
    gets
    system "clear"
  end