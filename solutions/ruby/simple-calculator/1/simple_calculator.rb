class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
    
  end

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError unless first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)

    result = case operation
    when '+' then first_operand + second_operand
    when '*' then first_operand * second_operand
    when '/'
      begin
        first_operand / second_operand
      rescue ZeroDivisionError
        return "Division by zero is not allowed."
      end
      
    else raise UnsupportedOperation.new("Operator '#{operation}' is not supported")
    end
    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end