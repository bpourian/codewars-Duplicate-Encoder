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
-----------------
##alternative solution which I found interesting

class HighScoreTable
  attr_accessor :scores

  def initialize(limit)
    @limit = limit
    @scores = []
  end

  def update(new_score)
    @scores << new_score
    @scores = @scores.sort.reverse.take(@limit)
  end

  def reset
    @scores = []
  end
end
-----------------
=end


#my solution
class HighScoreTable

  def initialize(size)
    @size = size
    @score_list = []
  end

  def scores
    #sort array and put in descending order
    @score_list = @score_list.sort.reverse
  end

  def update(score)
    #add to array whilst its length doesn't exceed the size given
    return @score_list << score if @score_list.length < @size
    #otherwise reverse and sort array in descending order
    @score_list = @score_list.sort.reverse
    #if last element is smaller than the score, then replace with score
    @score_list[@size - 1] = score if @score_list[@size - 1] < score
  end

  def reset
    @score_list = []
  end

end
