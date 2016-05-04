
  @categories = { "ruby" => 300, "rails" => 500, "html" => 250, "javascript" => 150, "computer science" => 100 }

  def start
    intro
    program
  end

  def intro
    puts "*******************"
    puts "How I learn to code"
    puts "*******************"
    puts "Create a new category : C"
    puts "Read a category       : R"
    puts "Update a category     : U"
    puts "Destroy a category    : D"
    puts "List all categories   : L"
    puts "Quit                  : Q"
  end

  def get_categories(hash)
    hash.each { |k,v| puts k.capitalize}
  end

  def get_time(hash, category)
    hash.each { |k,v| puts "#{k}".capitalize + " : #{v}" if k == category}
  end

  def get_categories_time(hash)
    hash.each { |k,v| puts "#{k}".capitalize + " : #{v}" }
  end

  def read_category
    puts "Choose a category"
    get_categories(@categories)
    category = gets.chomp.downcase
    get_time(@categories, category)
  end

  def create_category
    puts "Please enter the category name"
    new_category = gets.chomp.downcase
    puts "please enter the time total"
    time_total = gets.chomp.downcase
    @categories[new_category] = time_total
    puts "time total has been added to the database"
  end

  def destroy_category
    puts "What category would you like to remove?"
    get_categories(@categories)
    delete_category = gets.chomp.downcase
    @categories.delete_if { |k,v| k.downcase == delete_category.downcase}
    puts "#{delete_category} has been removed from the database"
  end

  def update_category
    puts "What category would you like to update?"
    get_categories(@categories)
    update_time_total = gets.chomp.downcase
    puts "Update category   : C"
    puts "Update time total : Z"
    update_choice = gets.chomp.downcase
    if update_choice.downcase == "c"
      puts "Enter the new category name"
      update_category = gets.chomp.downcase
      @categories[update_category] = @categories.delete(update_time_total)
      puts "The category name has been updated in the database"
    elsif update_choice.downcase == "z"
      puts "Enter the new time total"
      update_time_total = gets.chomp.downcase
      @categories[update_category] = update_time_total
      puts "The time total has been updated in the database"
    else
      invalid_option
    end
  end

  def invalid_option
    puts "That is not a valid option"
  end

  def program
    loop do
      prompt = gets.chomp.downcase
      if prompt == "r"
        read_category
      elsif prompt == "c"
        create_category
      elsif prompt == "d"
        destroy_category
      elsif prompt == "u"
        update_category
      elsif prompt == "l"
        get_categories_time(@categories)
      elsif prompt == "q"
        puts "goodbye"
        break
      else
        invalid_option
      end
    end
  end

start
