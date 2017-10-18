class ScoresController < ApplicationController
  before_action :signed_in_user, :except => :score_calcs



  def score_calcs
    @user   = current_user
    @course = @user.course
    presenter = ScorePresenters::GolfScorePresenter.new 

    #update session view of the score card with the changes from the ajax call
    @new_score = session[:new_score]
    if params[:field_id].match('score_score') 
      @new_score["score_#{params[:hole_number]}".to_sym] = params[:score].to_i
    elsif params[:field_id].match('score_putts') 
      @new_score["putts_#{params[:hole_number]}".to_sym] = params[:score].to_i
    elsif params[:field_id].match('score_fairways') 
      @new_score["fairways_#{params[:hole_number]}".to_sym] = params[:checkbox_state]
    elsif params[:field_id].match('score_greens') 
      @new_score["greens_#{params[:hole_number]}".to_sym] = params[:checkbox_state]  
    end
    @new_score[:hc] = params[:handicap]

    @stableford_pts = Array.new(18) { |i|  presenter.calc_stableford(@new_score["score_#{(i+1)}".to_sym], eval("@course.par_" + (i+1).to_s).to_i, 
                                           presenter.calc_shots_on_hole(params[:handicap].to_i,  eval("@course.si_" + (i+1).to_s).to_i))} 
    

    #instance variables used in the score_calc_js that updates the view
    @score_totals     = presenter.total_score(@new_score)
    @putts_totals     = presenter.total_putts(@new_score)
    @fairways_totals  = presenter.total_fairways(@new_score)
    @greens_totals    = presenter.total_greens(@new_score)
    @points_totals    = presenter.total_points(@new_score, @course)

    respond_to do |format|
      format.js { }
    end
  end

  def index

  end

  def show
    @user   = User.find(params[:id])
    @course = @user.course
    @scores = @user.scores.paginate(page: params[:page], per_page: 50)
    @presenter = ScorePresenters::GolfScorePresenter.new 

    respond_to do |format|
      format.html
      format.csv { send_data @scores.to_csv, filename: "scores-#{Date.today}.csv" }
    end
  end

  def new
    @score = Score.new
    initialise_score
    session[:new_score] = @score
    @user   = current_user
    @course = @user.course
    @presenter = ScorePresenters::GolfScorePresenter.new 
  end

  def create
    @score = current_user.scores.build(score_params)
    if @score.save
      flash[:notice] = "Score created!"
      redirect_to score_path(current_user)
    else
      render 'new'
    end
  end
  
  def edit
    @user   = current_user
    @course = @user.course
    @score = current_user.scores.find(params[:id])
    @presenter = ScorePresenters::GolfScorePresenter.new 
    session[:new_score] = @score
  end
  
  def update
    #binding.pry
    @score = current_user.scores.find(params[:id])
    if @score.update_attributes(score_params)
     flash[:notice] = "Score updated"
     redirect_to score_path(current_user)
   else
     render 'edit'
   end
  end

  def destroy
    @score = current_user.scores.find(params[:id])
    @score.destroy
    flash[:notice] = "Score deleted."
    redirect_to score_path(current_user)
  end

  private

    def score_params
      params.require(:score).permit(:score_date, :hc, :score_1,  :fairways_1,  :greens_1,  :putts_1, 
                                                      :score_2,  :fairways_2,  :greens_2,  :putts_2, 
                                                      :score_3,  :fairways_3,  :greens_3,  :putts_3, 
                                                      :score_4,  :fairways_4,  :greens_4,  :putts_4, 
                                                      :score_5,  :fairways_5,  :greens_5,  :putts_5, 
                                                      :score_6,  :fairways_6,  :greens_6,  :putts_6, 
                                                      :score_7,  :fairways_7,  :greens_7,  :putts_7, 
                                                      :score_8,  :fairways_8,  :greens_8,  :putts_8, 
                                                      :score_9,  :fairways_9,  :greens_9,  :putts_9, 
                                                      :score_10, :fairways_10, :greens_10, :putts_10,
                                                      :score_11, :fairways_11, :greens_11, :putts_11,
                                                      :score_12, :fairways_12, :greens_12, :putts_12,
                                                      :score_13, :fairways_13, :greens_13, :putts_13,
                                                      :score_14, :fairways_14, :greens_14, :putts_14,
                                                      :score_15, :fairways_15, :greens_15, :putts_15,
                                                      :score_16, :fairways_16, :greens_16, :putts_16,
                                                      :score_17, :fairways_17, :greens_17, :putts_17,
                                                      :score_18, :fairways_18, :greens_18, :putts_18)
    end

    def initialise_score
      @score.score_date = Date.today
      @score.hc = 0
      @score.score_1 = 0
      @score.score_2 = 0
      @score.score_3 = 0
      @score.score_4 = 0
      @score.score_5 = 0
      @score.score_6 = 0
      @score.score_7 = 0
      @score.score_8 = 0
      @score.score_9 = 0
      @score.score_10 = 0
      @score.score_11 = 0
      @score.score_12 = 0
      @score.score_13 = 0
      @score.score_14 = 0
      @score.score_15 = 0
      @score.score_16 = 0
      @score.score_17 = 0
      @score.score_18 = 0
    end

end
