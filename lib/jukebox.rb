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

def list(x)
  x.each.with_index(1) do |x, y|
  puts "#{y}. #{x}"
  end
end

def play(x)
  puts "Please enter a song name or number:"
  entry = gets.chomp
  if entry.to_i.is_a?(Integer) && entry.to_i < 10 && entry.to_i > 0
    return puts "Playing #{x[entry.to_i - 1]}"
  elsif entry.to_i > 10
    puts "Invalid input, please try again"
  elsif entry.is_a?(String)
    x.each do |y|
      if y == entry
        return puts "Playing #{y}"
      end
    end
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(x)
  help
   puts "Please enter a command:"
    entry = gets.chomp
    i = 0
  while i < 1
    if entry == "help"
    help
  elsif entry == "list"
    list(x)
  elsif entry == "play"
    play(x)
  elsif entry == "exit"
    exit_jukebox
    return
  end
  puts "Please enter a command:"
    entry = gets.chomp
  end
end
