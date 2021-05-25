require 'digest'
load './location_check.rb'

@login_database = IO.readlines("./login.txt")     # Convert all words in .txt files to array
@login_database.map! { |word| word.chomp }        # Remove newline from all words

def check_login(username, password)
  hashed_password = Digest::SHA2.hexdigest(password)

  @login_database.each_with_index do |data, index|
    return true if (data.include? username + " || " + hashed_password)
  end
  return false
end

def check_location(username)
  username[0..1].upcase == $country
end

puts "Enter your username (case sensitive):"
username = gets.chomp

puts "Enter your password (case sensitive):"
password = gets.chomp


if check_login(username,password)
  check_location(username) ? (puts "Login is successful. Welcome #{username}. You are currently in #{$country_name}.") : (puts "Login is unsuccessful as user is not located at the right country.")
else
  puts "Invalid username and/or password."
end