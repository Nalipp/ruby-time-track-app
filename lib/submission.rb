require 'csv'

class Submission

  attr_reader :id, :category, :title, :type, :minutes
  DATA_PATH = File.dirname(__FILE__) + '/../data/data.csv'

  @@id_count = 0

  def initialize(opts={})
    @id = opts[:id] || @@id_count += 1
    @category = opts[:category]
    @title = opts[:title]
    @type = opts[:type]
    @minutes = opts[:minutes]
  end

  def self.create(args = nil)
    submission = new(args)
    submission.save
    submission
  end

  def save
    CSV.open(DATA_PATH, 'a') do |submission|
      submission << [id, category, title, type, minutes]
    end
  end
end

# sub1 = Submission.create(category: 'Ruby', title: 'POODR', type: 'book', minutes: 90)
# sub2 = Submission.create(category: 'Ruby', title: 'Udacity nanodegree', type: 'MOOC', minutes: 190)
# sub3 = Submission.create(category: 'HTML', title: 'Css garden', type: 'Code reading', minutes: 90)



#   get_last_id
#
#   private
#     def get_last_id
#       file = File.dirname(__FILE__) + "/../data/data.csv"
#       last_id = File.exist?(file) ? CSV.read(file).last[0].to_i + 1 : nil
#       @@count_class_instances = last_id || 0
#     end
#   end
# end
