class One
  @@name = 'Vasya'

  def initialize(name)
    @name = name
  end

  def self.hello
    hello_instance
  end

  def hello_instance
    puts "Hello #{@name}"
  end
end

# BaseObject -> Object -> One
#                         class level -> @@name, self.hello
#                         object level <Class>.new -> @name, hello


class Author
  attr_reader :last_name, :year_of_birth
  attr_accessor :first_name

  def initialize(first_name, last_name, year_of_birth)
    @first_name = first_name
    @last_name = last_name
    @year_of_birth = year_of_birth
  end

  def hello
    puts "Hello #{@first_name}"
  end
end

author1 = Author.new('as', 'ds', 1222)
author2 = Author.new('11', '44', 1221)
author3 = Author.new('22', '55', 1321)
author4 = Author.new('33', '66', 1251)

author1.first_name = 'asdasd'
author2.first_name = 'asdasd'
author3.first_name = 'asdasd'
author4.first_name = 'asdasd'
author1.first_name
author2.first_name
author3.first_name
author4.first_name

author1.hello
author2.hello
author3.hello
author4.hello
