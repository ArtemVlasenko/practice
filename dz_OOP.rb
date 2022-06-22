# class Animal
#   def say(word1:, word2: 'default value', hash: {})
#     puts word1
#     puts hash.inspect
#     puts word2
#   end
# end
# new_animal = Animal.new
# new_animal.say word1:'word1', hash: {key:'value', key2: 5}


# class Animal

#   attr_accessor :name, :age
#   def initialize(name, age = 0)
#     @name = name
#     @age = age
#   end
# end

# class Cat < Animal

# end
# class Dog < Animal

# end



# buttons = Cat.new name 'buttons', age 5
# puts buttons.class

class BookInStock
  attr_accessor :title
  attr_writer :author
  attr_reader :price
def self.total_amount(*books) #(self)метод класса они доступні без создания єкземпляра класса
  books.map(:prisce).inject(0, :+)
end
book1 = BookInStock.new('t1', 'a2', 10)
BookInStock.total_amount(book)  #метод класса


  def initialize(title, author, price)
    @title = title
    @author = author
    @price = Float(price)
  end
end
book = BookInStock.new('Artem','Vlasenko', 35.5) # экземпляр класса
# book.price = 10


def prise=(value)   #сеттер(attr_writer :price)
  @price = value
end


def price  #геттер или (attr_reader  :price )
  @price
end
# attr_accessor - заменяет и гетерры и сетторы

# вместо набора require_relative (Dir["*.rb"].each {|переменная| require_relative переменная})


Class RealItem < Item
arrt_accessor :weight

  def initialize(options)
    @weight = options[:weight]
     super #(поле weight мы удалили с родительского класса но он будет доступен и в других )
   end
end

require_relative "dz_OOP.rb" #добавляет модуль методі и логику из одного файла в другой
include dz_OOP
dz_OOP.название метода(значение)
