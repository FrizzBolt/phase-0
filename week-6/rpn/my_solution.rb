#Initial Solution

class RPNCalculator
  
  def initialize
    @stack = Array.new
  end

  def operator(x)
  result = 0
  case x
  when "*"
      result = @stack[-2] * @stack[-1]
  when "+"
      result = @stack[-2] + @stack[-1]
  when "-"
      result = @stack[-2] - @stack[-1]
  end
  2.times { @stack.pop }
  @stack << result
  end
  
  def evaluate(equation)
    @equation = equation.split(" ")
    @equation.each do |x|
      if x.to_i != 0
        @stack << x.to_i
      elsif x == "*" || x == "+" || x == "-"
        operator(x)
      elsif 0
        p 0
      else
        p "Error"
      end
    end

    p @stack[0]
  
  end
    
end

# I didn't have time to refactor, but here's my initial solution. It passes all of the rspec tests.