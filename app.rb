require 'digest'

@login_database = IO.readlines("./login.txt")     # Convert all words in .txt files to array
@login_database.map! { |word| word.chomp }        # Remove newline from all words

def check_login(username, password)
  hashed_password = Digest::SHA2.hexdigest(password)

  @login_database.each_with_index do |data, index|
    return true if (data.include? username + " || " + hashed_password)
  end
  return false
end

puts "Enter your username (case sensitive):"
username = gets.chomp

puts "Enter your password (case sensitive):"
password = gets.chomp

user_exist = check_login(username,password)

user_exist ? (puts "Login is successful.") : (puts "Invalid username and/or password.")