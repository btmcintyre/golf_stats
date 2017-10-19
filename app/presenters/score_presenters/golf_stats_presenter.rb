module ScorePresenters

  class GolfStatsPresenter
    public
 
    def average_score(scores, i)
      total = 0
      scores.each do |score|
        if eval('score.score_' + i.to_s) != nil
          total = total + eval('score.score_' + i.to_s)
        end
      end
      return '%.2f' % (total.fdiv(scores.count))
    end

    def average_putts(scores, i)
      total = 0
      scores.each do |score|
        if eval('score.putts_' + i.to_s) != nil
          total = total + eval('score.putts_' + i.to_s)
        end
      end
      return '%.2f' % (total.fdiv(scores.count))
    end

    def average_fairways(scores, i)
      total = 0
      scores.each do |score|
        if eval('score.fairways_' + i.to_s) 
          total = total + 1 
        end       
      end
      return '%.2f' % (100.fdiv(scores.count) * total)
    end

    def average_greens(scores, i)
      total = 0
      scores.each do |score|
        if eval('score.greens_' + i.to_s) 
          total = total + 1
        end
      end
      return '%.2f' % (100.fdiv(scores.count) * total)
    end
  end
end