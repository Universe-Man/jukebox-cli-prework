require 'pry'

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
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  songNumberArray = (1..9).to_a
  puts "Please enter a song name or number:"
  usersInput = gets.chomp
  if songNumberArray.include?(usersInput.to_i)
    puts "Playing #{songs[usersInput.to_i - 1]}"
  elsif songs.include?(usersInput)
    puts "Playing #{usersInput}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  userCommand = ""
  help
  until userCommand == "exit"
    puts "Please enter a command:"
    userCommand = gets.chomp
    if userCommand == "list"
      list(songs)
    elsif userCommand == "help"
      help
    elsif userCommand == "play"
      play(songs)
    elsif userCommand == "exit"
      exit_jukebox
    else
    end
  end
end
