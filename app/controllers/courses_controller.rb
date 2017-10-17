class CoursesController < ApplicationController
	before_action :signed_in_user

  def index
  end

  def show
    @user   = User.find(params[:id])
    @course = @user.course
  end

  def create
    #@course = current_user.course.build(course_params)
    #@user   = User.find(params[:id])
    #@course = @user.course.build(course_params)
    #if @course.save
    #  flash[:notice] = "Course created!"
    # redirect_to course_path(current_user)
    #else
    #  render 'new'
    #end
  end

  def edit
    @user   = User.find(params[:id])
    @course = @user.course
  end
  
  def update
    @user   = User.find(params[:id])
    @course = @user.course

    if @course.update_attributes(course_params)
      flash[:notice] = "Course updated"
      redirect_to course_path(current_user)
    else
      render 'edit'
    end
  end

	private

    def course_params
      params.require(:course).permit(:name, :user_id,
                                            :si_1,  :par_1, 
      																		  :si_2,  :par_2, 
      																		  :si_3,  :par_3, 
      																		  :si_4,  :par_4, 
      																		  :si_5,  :par_5, 
      																		  :si_6,  :par_6, 
      																		  :si_7,  :par_7, 
      																		  :si_8,  :par_8, 
      																		  :si_9,  :par_9, 
      																		  :si_10, :par_10,
      																		  :si_11, :par_11,
      																		  :si_12, :par_12,
      																		  :si_13, :par_13,
      																		  :si_14, :par_14,
      																		  :si_15, :par_15,
      																		  :si_16, :par_16,
      																		  :si_17, :par_17,
      																		  :si_18, :par_18)
    end

end
