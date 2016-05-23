require_relative './lib/submission'

DATA_PATH = File.dirname(__FILE__) + '/data/data.csv'
File.delete(DATA_PATH)

Submission.create(category: 'Ruby', title: 'POODR', type: 'Book', minutes: 90)
Submission.create(category: 'Ruby', title: 'Udacity nanodegree', type: 'MOOC', minutes: 190)
Submission.create(category: 'HTML', title: 'Css garden', type: 'Code reading', minutes: 90)
Submission.create(category: 'Ruby', title: 'The Pickax Book', type: 'Book',  minutes: 600)
Submission.create(category: 'Rails', title: 'Launch School', type: 'Online bootcamp',  minutes: 2600)
Submission.create(category: 'javascript', title: 'You Dont know JS', type: 'Book',  minutes: 1200)

puts "***********************************************"
puts "**  My Coding Journey - How I learn to code  **"
puts "***********************************************"
puts
puts "Input a new category and press enter. Quit[q] / Help[h]"
      category = gets.chomp.capitalize
puts "Input the title. Quit[q] / Help[h]"
      title = gets.chomp.capitalize
puts "Input the type. Quit[q] / Help[h]"
      type = gets.chomp.capitalize
puts "Input the minutes studied. Quit[q] / Help[h]"
      minutes = gets.chomp.capitalize
puts "***********************************************"
puts "**********  Your current submission  **********"
puts "***********************************************"
puts "[1]Category : #{category}"
puts "[2]Title : #{title}"
puts "[3]Type : #{type}"
puts "[4]Minutes : #{minutes}"
  loop do
    puts "Submit? [y] / Update[1-4] / Quit[q]"
      prompt = gets.chomp.downcase
      case prompt
      when 'y'
        Submission.create(category: category, title: title, type: type,  minutes: minutes)
        break
      when '1'
        puts "Input the updated category"
        category = gets.chomp.upcase
      when '2'
        puts "Input the updated title"
        title = gets.chomp.upcase
      when '3'
        puts "Input the updated type"
        tyoe = gets.chomp.upcase
      when '4'
        puts "Input the updated minutes"
        minutes = gets.chomp.upcase
      when 'q'
        puts "Submission has been terminated"
        break
      else
        puts "That is not a valid submission"
      end
    end


# puts "Category" + " : " + prompt


# #   def start
# #     intro
# #     program
# #     starter_data
# #   end
# #
# #   def intro
# #     puts "*******************"
# #     puts "How I learn to code"
# #     puts "*******************"
# #     puts "Create a new category : C"
# #     puts "Read a category       : R"
# #     puts "Update a category     : U"
# #     puts "Destroy a category    : D"
# #     puts "List all categories   : L"
# #     puts "Quit                  : Q"
# #   end
# #
# #   def get_categories(hash)
# #     hash.each { |k,v| puts k.capitalize}
# #   end
# #
# #   def get_time(hash, category)
# #     hash[category]
# #   end
# #
# #   def get_categories_time(hash)
# #     hash.each { |k,v| puts "#{k}".capitalize + " : #{v}" }
# #   end
# #
# #   def read_category
# #     puts "Choose a category"
# #     get_categories(@categories)
# #     category = gets.chomp.downcase
# #     puts "#{category} : " + get_time(@categories, category).to_s
# #   end
# #
# #   def create_category
# #     puts "Please enter the category name"
# #     new_category = gets.chomp.downcase
# #     puts "please enter the time total"
# #     time_total = gets.chomp.downcase
# #     @categories[new_category] = time_total
# #     puts "time total has been added to the database"
# #   end
# #
# #   def destroy_category
# #     puts "What category would you like to remove?"
# #     get_categories(@categories)
# #     delete_category = gets.chomp.downcase
# #     @categories.delete_if { |k,v| k.downcase == delete_category.downcase}
# #     puts "#{delete_category} has been removed from the database"
# #   end
# #
# #   def update_category
# #     puts "What category would you like to update?"
# #     get_categories(@categories)
# #     update_time_total = gets.chomp.downcase
# #     puts "Update category   : C"
# #     puts "Update time total : Z"
# #     update_choice = gets.chomp.downcase
# #     if update_choice.downcase == "c"
# #       puts "Enter the new category name"
# #       update_category = gets.chomp.downcase
# #       @categories[update_category] = @categories.delete(update_time_total)
# #       puts "The category name has been updated in the database"
# #     elsif update_choice.downcase == "z"
# #       puts "Enter the new time total"
# #       update_time_total = gets.chomp.downcase
# #       @categories[update_category] = update_time_total
# #       puts "The time total has been updated in the database"
# #     else
# #       invalid_option
# #     end
# #   end
# #
# #   def invalid_option
# #     puts "That is not a valid option"
# #   end
# #
# #   def program
# #     loop do
# #       prompt = gets.chomp.downcase
# #       if prompt == "r"
# #         read_category
# #       elsif prompt == "c"
# #         create_category
# #       elsif prompt == "d"
# #         destroy_category
# #       elsif prompt == "u"
# #         update_category
# #       elsif prompt == "l"
# #         get_categories_time(@categories)
# #       elsif prompt == "q"
# #         puts "goodbye"
# #         break
# #       else
# #         invalid_option
# #       end
# #     end
# #   end
# #
# # start
