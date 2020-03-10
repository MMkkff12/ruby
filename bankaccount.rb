## create a program that acts as a bank account with deposits and withdrawls

puts "Welcome to Safe Bank!"
puts "What is your name?"
name = gets.chomp
puts "Your beginning balance #{name} is $1,000"
puts "Do you want to make a deposit? If so enter d below."
puts "Or if you want to make a withdrawl, then enter a w below"
balance = 1000
trantype = gets.chomp

if trantype == "d"
    puts "How much would you like to deposit today?"
    depamount = gets.to_f
    newbalance = balance + depamount
    puts "Your new balance is $#{newbalance}"
elsif trantype =="w"
    puts "How much would you like to withdrawl today?"
    withamount = gets.to_f
    if withamount > balance
        puts "You don't have that much in your account!"
        puts "You can only withdrawl $#{balance}!  Please enter an amount less than $#{balance}"
        withamount = gets.to_f
        newbalance = balance - withamount
        puts "Your new balance is $#{newbalance}"
    elsif  newbalance = balance - withamount
        puts "Your new balance is $#{newbalance}"
    end
    
    
end
