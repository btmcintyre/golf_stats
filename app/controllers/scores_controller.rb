class ScoresController < ApplicationController
  before_action :signed_in_user

  def index
  end

  def show
    @user   = User.find(params[:id])
    @scores = @user.scores.paginate(page: params[:page], per_page: 12)
    @presenter = ScorePresenters::GolfScorePresenter.new 
  end

  def new
    @score = Score.new
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
    @score = current_user.scores.find(params[:id])
  end
  
  def update
    @score = current_user.scores.find(params[:id])
    if @score.update_attributes(score_params)
     flash[:notice] = "Score updated"
     redirect_to score_path(current_user)
   else
     render 'edit'
   end
  end

  def destroy
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

end
