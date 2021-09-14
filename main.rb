require ('./player')
require ('./question')

p1 = Player.new('Player 1')
p2 = Player.new('Player 2')

#Check if we should switch player
switch_player = false 

#Print the winner
def print_winner(p1, p2)
  if p1.life > 0
    puts ("#{p1.name} is the winner")
    return
  end

  puts ("#{p2.name} is the winner")
end

while true
  question = Question.new

  #If switch player is false we ask player 1 the questions, else we ask player 2
  if switch_player == false
    puts("#{p1.name}: #{question.str}")
    answer = gets.chomp.to_i
    
    if answer != question.num1 + question.num2 #If user answers incorrectly they lose life
      puts("Seriously? No!")
      p1.reduce_life
    else 
      puts("Yes you are correct")
    end
    
    switch_player = true
  else 
    puts("#{p2.name}: #{question.str}")
    answer = gets.chomp.to_i

    if answer != question.num1 + question.num2
      puts("Seriously? No!")
      p2.reduce_life
    else 
      puts("Yes you are correct")
    end

    switch_player = false
  end

  puts ("P1: #{p1.life}, P2: #{p2.life}")
  
  if (p1.life == 0 || p2.life == 0)
    print_winner(p1, p2)
    puts ('--- GAME OVER ----')
    break
  end

  puts ('--- NEW TURN ----')
end
