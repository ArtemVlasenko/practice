# Proc and Lambda

def one
  puts 'One'
end

def two
  puts "two"
end

# a = Proc.new { one; two }

# class Some
#   def call(proc)
#     proc.call
#   end
# end

# Some.new.call(a)


class Result
  attr_reader :result

  def initialize(result)
    @result = result
  end

  def success?
    true
  end

  def failure?
    true
  end
end

class CustomDsl
  def initialize(result, &block)
    @result = result
    @block = block
  end

  def call
    @halt = Proc.new { return }
    @block.call(self)
  end

  def success?(&block)
    puts "before success"
    if @result.success?
      block.call
      @halt.call
    end
    puts "after success"
  end

  def failure?(&block)
    puts "before failure"
    if @result.failure?
      block.call
      @halt.call
    end
    puts "after failure"
  end
end

class Action
  def initialize(params)
    @params = params
  end

  def call(&block)
    calculation = @params[:one] + @params[:two]
    result = Result.new(calculation)
    CustomDsl.new(result, &block).call
  end
end

Action.new({one: 1, two: 2}).call do |res|
  res.success? { one }
  res.failure? { two }
end

puts "Finish"
