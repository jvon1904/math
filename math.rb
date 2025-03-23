$correct_answers = 0
$incorrect_answers = 0

def math
  x = Random.rand(10) + 2
  y = Random.rand(10) + 2
  answer = x * y
  puts("what is #{x} x #{y}?")
  input = gets.chomp

  if answer == input.to_i
    puts("\e[32m\n#{input} - you're correct!!!\n\n\e[0m")
    $correct_answers += 1
  else
    puts("\e[31m\n#{input} - you're wrong...\n\n\e[0m")
    $incorrect_answers += 1
  end
  puts("Correct Answers: #{$correct_answers}, Incorrect Answers: #{$incorrect_answers}")
  puts("#{(($correct_answers.to_f / ($correct_answers + $incorrect_answers).to_f) * 100).round}%\n\n")
  math
end

math
