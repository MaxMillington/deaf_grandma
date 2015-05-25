#
# # If you don't input anything (just hit enter) she responds with WHAT?!
# If you ask a question with any lower-case letters, she responds with SPEAK UP, KID!
# If you ask a question in all upper-case letters, she responds with NO, NOT SINCE 1946!
# The first time you say GOODBYE! she says LEAVING SO SOON?
# # The second time you say GOODBYE! she says LATER, SKATER! and the program exits.
#
#


# HEY KID!
# > hi, grandma
# SPEAK UP, KID!
# > I SAID HI, GRANDMA
# NO, NOT SINCE 1946!
# >
#     WHAT?!
# > Goodbye!
# SPEAK UP, KID!
# > GOODBYE!
# LEAVING SO SOON?
# > GOODBYE!
# LATER, SKATER!


bye_counter = 0
ready_to_quit = false

puts "HEY KID!"

until ready_to_quit
  input = gets.chomp
  if input == ""
    puts "WHAT?"
  elsif input.downcase == input
    puts "SPEAK UP KID!"
  elsif "GOODBYE!" == input
    if bye_counter == 0
      bye_counter += 1
      puts "LEAVING SO SOON?"
    else
      ready_to_quit = true
    end
  elsif input.upcase == input
    puts "NO, NOT SINCE 1946!"
  end

end

puts "LATER, SKATER!"

