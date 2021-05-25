require 'digest'

@login_database = IO.readlines("./login.txt")     # Convert all words in .txt files to array
@login_database.map! { |word| word.chomp }        # Remove newline from all words

def check_username(username)
  @login_database.each_with_index do |data, index|
    return true if (data.include? username + " || ")
  end
  return false
end

def check_password(password)
  hashed_password = Digest::SHA2.hexdigest(password)
  
  @login_database.each_with_index do |data, index|
    return true if (data.include? " || " + hashed_password)
  end
  return false
end


puts "Enter your username (case sensitive):"
username = gets.chomp

user_exist = check_username username


puts "Enter your password (case sensitive):"
password = gets.chomp


password_exist = check_password password
puts password_exist