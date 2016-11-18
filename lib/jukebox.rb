require 'byebug'
# songs = [
#   "Phoenix - 1901",
#   "Tokyo Police Club - Wait Up",
#   "Sufjan Stevens - Too Much",
#   "The Naked and the Famous - Young Blood",
#   "(Far From) Home - Tiga",
#   "The Cults - Abducted",
#   "Phoenix - Consolation Prizes",
#   "Harry Chapin - Cats in the Cradle",
#   "Amos Lee - Keep It Loose, Keep It Tight"
# ]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

#help

def list(songs)
  songs.each_with_index { |element,idx| puts "#{idx + 1}. #{element}"}
end

#list(songs)

def play(songs)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  #debugger
  if songs.include?(selection)
    puts "Playing <#{selection}>"
  elsif selection.to_i.is_a?(Integer) && !(selection.to_i <= 0 || selection.to_i > songs.length)
      #debugger
      song_name = songs[selection.to_i - 1]
      puts "Playing <#{song_name}>"
  else
    puts "Invalid input, please try again"
  end
end

# play(songs)
def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  response = gets.chomp
  if response == 'exit'
    exit_jukebox
  elsif response == 'help'
    help
    run(songs)
  elsif response == 'list'
    list(songs)
    run(songs)
  elsif response == 'play'
    play(songs)
  end
end

# run(songs)
