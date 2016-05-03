categories = { "ruby" => 300, "Rails" => 500, "Html" => 250, "JavaScript" => 150, "Computer Science" => 100 }

puts "*******************"
puts "How I learn to code"
puts "*******************"
puts "Create a new category : C"
puts "Read a category       : R"
puts "Update a category     : U"
puts "Destroy a category    : D"
puts "List all categories   : L"
puts "Quit                  : Q"

loop do
  prompt = gets.chomp.downcase
  if prompt == "r"
    puts "Choose a category"
    categories.each { |k,v| puts k}
    category = gets.chomp.downcase
    categories.each { |k,v| puts "#{k} : #{v}" if k.downcase == category }
  elsif prompt == "c"
    puts "Please enter the category name"
    new_category = gets.chomp
    puts "please enter the time total"
    time_total = gets.chomp
    categories[new_category] = time_total
    puts "time_total has been added to the database"
  elsif prompt == "d"
    puts "What category would you like to remove?"
    categories.each { |k,v| puts k}
    delete_category = gets.chomp
    categories.delete_if { |k,v| k.downcase == delete_category.downcase}
    puts "#{delete_category} has been removed from the database"
  elsif prompt == "u"
    puts "What category would you like to update?"
    categories.each { |k,v| puts k}
    update_time_total = gets.chomp
    puts "Update category   : C"
    puts "Update time total : Z"
    update_choice = gets.chomp
    if update_choice.downcase == "c"
      puts "Enter the new category name"
      update_category = gets.chomp
      categories[update_category] = categories.delete(update_time_total)
      puts "The category name has been updated in the database"
    elsif update_choice.downcase == "z"
      puts "Enter the new time total"
      update_time_total = gets.chomp
      categories[update_category] = update_time_total
      puts "The time total has been updated in the database"
    else
      puts "That is not a valid option"
    end
  elsif prompt == "l"
    categories.each { |k,v| puts "#{k} : #{v}" }
  elsif prompt == "q"
    puts "goodbye"
    break
  else
    puts "That is not a valid option"
  end
end
