## Annual Pay Estimator

puts "Enter from list below the letter next to your pay method."

puts "Enter 1 if you are paid Every Week"
puts "Enter 2 if you are paid Every Other Week"
puts "Enter 3 if you are paid Semi- Monthly( twice a month)"
puts "Enter 4 if you are paid Monthly"
timeframe = gets.chomp
puts "Enter the amount of your paycheck here, then hit enter."
amount = gets.to_i

if timeframe == "1"  
    annual = amount * 52
    puts "If you are paid $#{amount} per week, then you should make $#{annual} per year."
elsif timeframe == "2"  
    annual = amount * 26
    puts "If you are paid $#{amount} every other week, then you should make $#{annual} per year."
elsif timeframe == "3"  
    annual = amount * 24
    puts "If you are paid $#{amount}" + " twice per month, then you should make $#{annual} per year."
elsif timeframe == "4"  
    annual = amount * 12
    puts "If you are paid $#{amount}" + " once a month, then you should make $#{annual} per year."
end

