module ScorePresenters
  class GolfScorePresenter
    public
 
    #def initialize( score_calcs )
    #  @score_calcs = score_calcs
    #end
 
    def total_score(score)
    	total_score = 0
      total_score += score.score_1  if score.score_1  != nil
      total_score += score.score_2  if score.score_2  != nil
      total_score += score.score_3  if score.score_3  != nil
      total_score += score.score_4  if score.score_4  != nil
      total_score += score.score_5  if score.score_5  != nil
      total_score += score.score_6  if score.score_6  != nil
      total_score += score.score_7  if score.score_7  != nil
      total_score += score.score_8  if score.score_8  != nil
      total_score += score.score_9  if score.score_9  != nil
      total_score += score.score_10 if score.score_10 != nil
      total_score += score.score_11 if score.score_11 != nil
      total_score += score.score_12 if score.score_12 != nil
      total_score += score.score_13 if score.score_13 != nil
      total_score += score.score_14 if score.score_14 != nil
      total_score += score.score_15 if score.score_15 != nil
      total_score += score.score_16 if score.score_16 != nil
      total_score += score.score_17 if score.score_17 != nil
      total_score += score.score_18 if score.score_18 != nil
      return (total_score)
    end

    def total_putts(score)
      total_putts = 0
      total_putts += score.putts_1  if score.putts_1  != nil
      total_putts += score.putts_2  if score.putts_2  != nil
      total_putts += score.putts_3  if score.putts_3  != nil
      total_putts += score.putts_4  if score.putts_4  != nil
      total_putts += score.putts_5  if score.putts_5  != nil
      total_putts += score.putts_6  if score.putts_6  != nil
      total_putts += score.putts_7  if score.putts_7  != nil
      total_putts += score.putts_8  if score.putts_8  != nil
      total_putts += score.putts_9  if score.putts_9  != nil
      total_putts += score.putts_10 if score.putts_10 != nil
      total_putts += score.putts_11 if score.putts_11 != nil
      total_putts += score.putts_12 if score.putts_12 != nil
      total_putts += score.putts_13 if score.putts_13 != nil
      total_putts += score.putts_14 if score.putts_14 != nil
      total_putts += score.putts_15 if score.putts_15 != nil
      total_putts += score.putts_16 if score.putts_16 != nil
      total_putts += score.putts_17 if score.putts_17 != nil
      total_putts += score.putts_18 if score.putts_18 != nil
      return (total_putts)
    end

    def total_fairways(score)
      total_fairways = 0
      total_fairways += 1 if score.fairways_1 
      total_fairways += 1 if score.fairways_2 
      total_fairways += 1 if score.fairways_3 
      total_fairways += 1 if score.fairways_4 
      total_fairways += 1 if score.fairways_5 
      total_fairways += 1 if score.fairways_6 
      total_fairways += 1 if score.fairways_7 
      total_fairways += 1 if score.fairways_8 
      total_fairways += 1 if score.fairways_9 
      total_fairways += 1 if score.fairways_10
      total_fairways += 1 if score.fairways_11
      total_fairways += 1 if score.fairways_12
      total_fairways += 1 if score.fairways_13
      total_fairways += 1 if score.fairways_14
      total_fairways += 1 if score.fairways_15
      total_fairways += 1 if score.fairways_16
      total_fairways += 1 if score.fairways_17
      total_fairways += 1 if score.fairways_18
      return (total_fairways)
    end

    def total_greens(score)
      total_greens = 0
      total_greens += 1 if score.greens_1 
      total_greens += 1 if score.greens_2 
      total_greens += 1 if score.greens_3 
      total_greens += 1 if score.greens_4 
      total_greens += 1 if score.greens_5 
      total_greens += 1 if score.greens_6 
      total_greens += 1 if score.greens_7 
      total_greens += 1 if score.greens_8 
      total_greens += 1 if score.greens_9 
      total_greens += 1 if score.greens_10
      total_greens += 1 if score.greens_11
      total_greens += 1 if score.greens_12
      total_greens += 1 if score.greens_13
      total_greens += 1 if score.greens_14
      total_greens += 1 if score.greens_15
      total_greens += 1 if score.greens_16
      total_greens += 1 if score.greens_17
      total_greens += 1 if score.greens_18
      return (total_greens)
    end

    def total_points(score)
      total_points = 0
      if score.hc != nil
        total_points += calc_stableford(score.score_1,  5, calc_shots_on_hole(score.hc,  9)) if score.score_1  != nil 
        total_points += calc_stableford(score.score_2,  4, calc_shots_on_hole(score.hc,  5)) if score.score_2  != nil
        total_points += calc_stableford(score.score_3,  3, calc_shots_on_hole(score.hc, 17)) if score.score_3  != nil
        total_points += calc_stableford(score.score_4,  4, calc_shots_on_hole(score.hc, 15)) if score.score_4  != nil
        total_points += calc_stableford(score.score_5,  4, calc_shots_on_hole(score.hc,  7)) if score.score_5  != nil
        total_points += calc_stableford(score.score_6,  4, calc_shots_on_hole(score.hc,  1)) if score.score_6  != nil
        total_points += calc_stableford(score.score_7,  3, calc_shots_on_hole(score.hc, 13)) if score.score_7  != nil
        total_points += calc_stableford(score.score_8,  4, calc_shots_on_hole(score.hc, 11)) if score.score_8  != nil
        total_points += calc_stableford(score.score_9,  4, calc_shots_on_hole(score.hc,  3)) if score.score_9  != nil
        total_points += calc_stableford(score.score_10, 3, calc_shots_on_hole(score.hc, 16)) if score.score_10 != nil
        total_points += calc_stableford(score.score_11, 4, calc_shots_on_hole(score.hc,  8)) if score.score_11 != nil
        total_points += calc_stableford(score.score_12, 4, calc_shots_on_hole(score.hc, 12)) if score.score_12 != nil
        total_points += calc_stableford(score.score_13, 3, calc_shots_on_hole(score.hc, 18)) if score.score_13 != nil
        total_points += calc_stableford(score.score_14, 4, calc_shots_on_hole(score.hc,  2)) if score.score_14 != nil
        total_points += calc_stableford(score.score_15, 3, calc_shots_on_hole(score.hc, 14)) if score.score_15 != nil
        total_points += calc_stableford(score.score_16, 5, calc_shots_on_hole(score.hc,  6)) if score.score_16 != nil
        total_points += calc_stableford(score.score_17, 5, calc_shots_on_hole(score.hc, 10)) if score.score_17 != nil
        total_points += calc_stableford(score.score_18, 4, calc_shots_on_hole(score.hc,  4)) if score.score_18 != nil
      end      
      return (total_points)
    end

    def calc_stableford(hole_score, hole_par, num_shots)
      return hole_par - hole_score + 2 + num_shots
    end

    def calc_shots_on_hole(hc, hole_index)
      if hole_index > hc
        return 0
      else 
        if hc > 18
          if (hc - hole_index) > 18
            return 2
          else
            return 1
          end
        else
          return 1
        end
      end
    end

  end
end