def pick
  p "Make your pick: Rock, Paper, Scissors, Spock, or Lizard"
  choice = gets.chomp!
  choice = choice.downcase
 ensurepick(choice)
end

def ensurepick(choice)
  if (choice == "rock") || (choice == "paper") || (choice == "scissors") || (choice == "spock") || (choice == "lizard")

    cpu_choices = ["rock", "paper", "scissors", "spock", "lizard"]
    cpu = cpu_choices.sample

    compare(choice, cpu)
  else
    p "That is an invalid choice."
    pick
  end
end

def compare(user, cpu)
  if user == cpu
    p "You chose #{user} and the computer chose #{cpu}, You tied."
    playagain

  else
    wl = "Lost"
    case
    when user == "rock" && (cpu == "paper" || cpu == "spock") then win(user, cpu, wl)
    when user == "paper" && (cpu == "lizard" || cpu == "scissors") then win(user, cpu, wl)
    when user == "scissors" && (cpu == "rock" || cpu == "spock") then win(user, cpu, wl)
    when user == "spock" && (cpu == "paper" || cpu == "lizard") then win(user, cpu, wl)
    when user == "lizard" && (cpu == "rock" || cpu == "scissors") then win(user, cpu, wl)
    else
      wl = "WON"
      win(user, cpu, wl)
    end
  end
end

def win(user, cpu, wl)
  p "You chose #{user} and the computer chose #{cpu}, You #{wl}."
  playagain
end

def playagain
  p "would you like to play again?  Y/N"
  choice = gets.chomp!
  if choice.downcase == "y"
    pick
  else
    p "Thanks for playing. Good Bye"
  end
end
pick
