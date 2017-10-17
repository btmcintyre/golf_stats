module ScorePresenters
  class GolfScorePresenter
    public
 
    #def initialize( score_calcs )
    #  @score_calcs = score_calcs
    #end
 
    def total_score(score)
    	total_score = 0
      first_nine_score = 0
      second_nine_score = 0
      total_score += score.score_1  if score.score_1  != nil
      total_score += score.score_2  if score.score_2  != nil
      total_score += score.score_3  if score.score_3  != nil
      total_score += score.score_4  if score.score_4  != nil
      total_score += score.score_5  if score.score_5  != nil
      total_score += score.score_6  if score.score_6  != nil
      total_score += score.score_7  if score.score_7  != nil
      total_score += score.score_8  if score.score_8  != nil
      total_score += score.score_9  if score.score_9  != nil
      first_nine_score = total_score

      total_score += score.score_10 if score.score_10 != nil
      total_score += score.score_11 if score.score_11 != nil
      total_score += score.score_12 if score.score_12 != nil
      total_score += score.score_13 if score.score_13 != nil
      total_score += score.score_14 if score.score_14 != nil
      total_score += score.score_15 if score.score_15 != nil
      total_score += score.score_16 if score.score_16 != nil
      total_score += score.score_17 if score.score_17 != nil
      total_score += score.score_18 if score.score_18 != nil
      second_nine_score = total_score - first_nine_score
      return ({total_score: total_score, first_nine_score: first_nine_score, second_nine_score: second_nine_score})
    end

    def total_putts(score)
      first_nine_putts = 0
      second_nine_putts = 0
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
      first_nine_putts = total_putts

      total_putts += score.putts_10 if score.putts_10 != nil
      total_putts += score.putts_11 if score.putts_11 != nil
      total_putts += score.putts_12 if score.putts_12 != nil
      total_putts += score.putts_13 if score.putts_13 != nil
      total_putts += score.putts_14 if score.putts_14 != nil
      total_putts += score.putts_15 if score.putts_15 != nil
      total_putts += score.putts_16 if score.putts_16 != nil
      total_putts += score.putts_17 if score.putts_17 != nil
      total_putts += score.putts_18 if score.putts_18 != nil
      second_nine_putts = total_putts - first_nine_putts
      return ({total_putts: total_putts, first_nine_putts: first_nine_putts, second_nine_putts: second_nine_putts})
    end

    def total_fairways(score)
      total_fairways = 0
      first_nine_fairways = 0
      second_nine_fairways = 0

      total_fairways += 1 if score.fairways_1 
      total_fairways += 1 if score.fairways_2 
      total_fairways += 1 if score.fairways_3 
      total_fairways += 1 if score.fairways_4 
      total_fairways += 1 if score.fairways_5
      total_fairways += 1 if score.fairways_6 
      total_fairways += 1 if score.fairways_7 
      total_fairways += 1 if score.fairways_8 
      total_fairways += 1 if score.fairways_9 
      first_nine_fairways = total_fairways

      total_fairways += 1 if score.fairways_10
      total_fairways += 1 if score.fairways_11
      total_fairways += 1 if score.fairways_12
      total_fairways += 1 if score.fairways_13
      total_fairways += 1 if score.fairways_14
      total_fairways += 1 if score.fairways_15
      total_fairways += 1 if score.fairways_16
      total_fairways += 1 if score.fairways_17
      total_fairways += 1 if score.fairways_18
      second_nine_fairways = total_fairways - first_nine_fairways

      return ({total_fairways: total_fairways, first_nine_fairways: first_nine_fairways, second_nine_fairways: second_nine_fairways})
    end

    def total_greens(score)
      total_greens = 0
      first_nine_greens = 0
      second_nine_greens = 0

      total_greens += 1 if score.greens_1 
      total_greens += 1 if score.greens_2 
      total_greens += 1 if score.greens_3 
      total_greens += 1 if score.greens_4 
      total_greens += 1 if score.greens_5 
      total_greens += 1 if score.greens_6 
      total_greens += 1 if score.greens_7 
      total_greens += 1 if score.greens_8 
      total_greens += 1 if score.greens_9 
      first_nine_greens = total_greens

      total_greens += 1 if score.greens_10
      total_greens += 1 if score.greens_11
      total_greens += 1 if score.greens_12
      total_greens += 1 if score.greens_13
      total_greens += 1 if score.greens_14
      total_greens += 1 if score.greens_15
      total_greens += 1 if score.greens_16
      total_greens += 1 if score.greens_17
      total_greens += 1 if score.greens_18
      second_nine_greens = total_greens - first_nine_greens

      return ({total_greens: total_greens, first_nine_greens: first_nine_greens, second_nine_greens: second_nine_greens})
    end

    def total_points(score, course)
      total_points = 0
      first_nine_points = 0
      second_nine_points = 0

      if score.hc != nil
        total_points += calc_stableford(score.score_1 ,  course.par_1 , calc_shots_on_hole(score.hc,  course.si_1 )) if score.score_1  != nil && course.si_1  != nil
        total_points += calc_stableford(score.score_2 ,  course.par_2 , calc_shots_on_hole(score.hc,  course.si_2 )) if score.score_2  != nil && course.si_2  != nil
        total_points += calc_stableford(score.score_3 ,  course.par_3 , calc_shots_on_hole(score.hc,  course.si_3 )) if score.score_3  != nil && course.si_3  != nil
        total_points += calc_stableford(score.score_4 ,  course.par_4 , calc_shots_on_hole(score.hc,  course.si_4 )) if score.score_4  != nil && course.si_4  != nil
        total_points += calc_stableford(score.score_5 ,  course.par_5 , calc_shots_on_hole(score.hc,  course.si_5 )) if score.score_5  != nil && course.si_5  != nil
        total_points += calc_stableford(score.score_6 ,  course.par_6 , calc_shots_on_hole(score.hc,  course.si_6 )) if score.score_6  != nil && course.si_6  != nil
        total_points += calc_stableford(score.score_7 ,  course.par_7 , calc_shots_on_hole(score.hc,  course.si_7 )) if score.score_7  != nil && course.si_7  != nil
        total_points += calc_stableford(score.score_8 ,  course.par_8 , calc_shots_on_hole(score.hc,  course.si_8 )) if score.score_8  != nil && course.si_8  != nil
        total_points += calc_stableford(score.score_9 ,  course.par_9 , calc_shots_on_hole(score.hc,  course.si_9 )) if score.score_9  != nil && course.si_9  != nil
        first_nine_points = total_points

        total_points += calc_stableford(score.score_10,  course.par_10, calc_shots_on_hole(score.hc,  course.si_10)) if score.score_10 != nil && course.si_10 != nil
        total_points += calc_stableford(score.score_11,  course.par_11, calc_shots_on_hole(score.hc,  course.si_11)) if score.score_11 != nil && course.si_11 != nil
        total_points += calc_stableford(score.score_12,  course.par_12, calc_shots_on_hole(score.hc,  course.si_12)) if score.score_12 != nil && course.si_12 != nil
        total_points += calc_stableford(score.score_13,  course.par_13, calc_shots_on_hole(score.hc,  course.si_13)) if score.score_13 != nil && course.si_13 != nil
        total_points += calc_stableford(score.score_14,  course.par_14, calc_shots_on_hole(score.hc,  course.si_14)) if score.score_14 != nil && course.si_14 != nil
        total_points += calc_stableford(score.score_15,  course.par_15, calc_shots_on_hole(score.hc,  course.si_15)) if score.score_15 != nil && course.si_15 != nil
        total_points += calc_stableford(score.score_16,  course.par_16, calc_shots_on_hole(score.hc,  course.si_16)) if score.score_16 != nil && course.si_16 != nil
        total_points += calc_stableford(score.score_17,  course.par_17, calc_shots_on_hole(score.hc,  course.si_17)) if score.score_17 != nil && course.si_17 != nil
        total_points += calc_stableford(score.score_18,  course.par_18, calc_shots_on_hole(score.hc,  course.si_18)) if score.score_18 != nil && course.si_18 != nil
        second_nine_points = total_points - first_nine_points
      end      
      return ({total_points: total_points, first_nine_points: first_nine_points, second_nine_points: second_nine_points})
    end


    def calc_stableford(hole_score, hole_par, num_shots)
      if (hole_score != nil) && (hole_par != nil) && (num_shots != nil) 
       return hole_par - hole_score + 2 + num_shots
      else
        return 0
      end
    end

    def calc_shots_on_hole(hc, hole_index)
      if (hc != nil) && (hole_index != nil) 
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
      else
        return 0
      end
    end
  end
end