=begin
You just got done writing a function that calculates the player's final score for
your new game, "Flight of the cockatoo".

Now all you need is a high score table that can be updated with the player's final
scores. With such a feature, the player will be motivated to try to beat his previous
scores, and hopefully, never stop playing your game.

The high score table will start out empty. A limit to the size of the table will be
specified upon creation of the table.

Here's an example of the expected behavior of the high score table :

highScoreTable = HighScoreTable(3)
highScoreTable.scores == [] # evaluates to True
highScoreTable.update(10)
highScoreTable.scores == [10]
highScoreTable.update(8)
highScoreTable.update(12)
highScoreTable.update(5)
highScoreTable.update(10)
highScoreTable.scores == [12, 10, 10]
highScoreTable.reset()
highScoreTable.scores == []
# And so on...
=end


class HighScoreTable

  def initialize(size)
    #@score_list = []#Array.new(size)
    @size = size
    @score_list = []
  end

  def scores
    @score_list = @score_list.sort.reverse
  end

  def update(score)
    if @score_list.length < @size
      @score_list << score
    else
      length_array = @score_list.length - 1
      @score_list = @score_list.sort.reverse
      @score_list[length_array] = score if @score_list[length_array] < score
    end
  end



  def reset
    @score_list = []
  end

end

highScoreTable = HighScoreTable.new(3)
highScoreTable.update(10)
highScoreTable.update(12)
highScoreTable.update(15)
highScoreTable.update(11)
highScoreTable.update(23)
print highScoreTable.scores
highScoreTable.reset
print highScoreTable
