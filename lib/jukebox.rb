# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list (songs)
  counter = 0 
  songs.each do |item|
    puts "#{counter += 1}. #{item}" 
  end 
end 

def play (songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip 
  counter = 0 
 while counter < songs.length 
 if (user_input == songs[counter])
   output = puts "Playing #{songs[counter]}"
   return output 
   elsif (user_input.to_i == (counter + 1))
   other_output = puts "Playing #{songs[counter]}"
   return other_output
 else 
   return puts "Invalid input, please try again"
 end 
 counter += 1 
 end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run (songs)
  puts "Please enter a command:"
  user_input = gets.strip
  while user_input != "exit"
  case user_input
  when "help"
    help()
    puts "Please enter a command:"
   user_input = gets.strip 
  when "list"
    list(songs)
    puts "Please enter a command:"
    user_input = gets.strip
  when "play"
    play(songs)
    puts "Please enter a command:"
    user_input = gets.strip
  else 
    puts "Invalid input, please try again"
end 
end 
exit_jukebox()
end 

