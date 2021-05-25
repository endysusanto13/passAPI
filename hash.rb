require 'digest'

puts "Enter password to be hashed (case sensitive):"
password = gets.chomp

def hash_password(new_password)
  Digest::SHA2.hexdigest(new_password)
end

puts hash_password password