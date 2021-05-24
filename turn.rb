class Turn
  attr_reader :player

  def initialize(player)
    @player = player
    @question = Question.new()
  end

  def ask
    puts "#{@player.name}: #{@question.question}"
    guess = gets.chomp.to_i
    if guess == @question.answer
      puts "#{@player.name}: YES YES YES"
    else
      puts "#{@player.name}: NO NO NO"
      @player.score -= 1
    end
  end
  
end