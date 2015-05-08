# CAESAR CIPHER

# Implements the Caesar cipher encryption in Ruby. Takes two arguments (a string
# and shift factor) and outputs the modified string.

def caesar_cipher(string, shift)
  letters = string.split('')
  letters.each do |i|
    if i >='a' && i <= 'z'
      encrypted = i.ord + shift
      if encrypted > 122 # ASCII for 'z'; wraps around to 'a'
        encrypted = encrypted - 26
      end
    elsif i >='A' && i <= 'Z'
      encrypted = i.ord + shift
      if encrypted > 90 # ASCII for 'Z'; wraps around to 'A'
        encrypted = encrypted - 26
      end
    else
      encrypted = i
    end
    new_string = ""
    print new_string << encrypted.chr
  end
end

def get_input # optional method, takes input from console prompts
  print "Please enter a phrase to encrypt: "
  phrase = gets.chomp
  begin
    print "Please enter an encryption key: "
    key = gets.chomp
  end until key =~ /^[0-9]+$/ # allow only numeric input for key
  key = key.to_i % 26 # ensures keys can be no larger than 26
  puts "\nThe encrypted phrase is: "
  caesar_cipher(phrase, key)
end

caesar_cipher("What a string!", 5)
