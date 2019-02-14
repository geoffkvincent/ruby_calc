require 'pry'
require 'colorize'

puts "__________________".colorize(:red)
puts "|   WELCOME TO    |".colorize(:red)
puts "| RUBY CALCULATOR |".colorize(:red)
puts "| AC|+/-|%   |/   |".colorize(:red)
puts "| 7 | 8 | 9  |X   |".colorize(:red)
puts "| 4 | 5 | 6  |-   |".colorize(:red)
puts "| 1 | 2 | 3  |+   |".colorize(:red)
puts "|                 |".colorize(:red)
puts "| 0     | .  | =  |".colorize(:red)
puts "-------------------".colorize(:red)
puts "Enter x to exit at anytime"

def menu 
  puts "Enter first number".colorize(:red)
  @first_number = gets.to_f
  puts "Enter Operator (+, -, /, *)".colorize(:red)
  @operator = gets.strip.downcase
  puts "Enter second number".colorize(:red)
  @second_number = gets.to_f
  puts "calculating....".colorize(:red)
end

while true
  menu
  case @operator
    when '+'
      puts "#{@first_number} #{@operator} #{@second_number} = #{@first_number + @second_number}"
    when '-'
      puts "#{@first_number} #{@operator} #{@second_number} = #{@first_number - @second_number}"
    when '/'
      puts "#{@first_number} #{@operator} #{@second_number} = #{@first_number / @second_number}"
    when '*'
      puts "#{@first_number} #{@operator} #{@second_number} = #{@first_number * @second_number}"
    when 'x'
      exit
    else
      "Invalid Operator: #{@operator}. Supported Operators: +  - / * "
      menu
  end
end
   