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
      																		  :s1_2,  :par_2, 
      																		  :s1_3,  :par_3, 
      																		  :s1_4,  :par_4, 
      																		  :s1_5,  :par_5, 
      																		  :s1_6,  :par_6, 
      																		  :s1_7,  :par_7, 
      																		  :s1_8,  :par_8, 
      																		  :s1_9,  :par_9, 
      																		  :s1_10, :par_10,
      																		  :s1_11, :par_11,
      																		  :s1_12, :par_12,
      																		  :s1_13, :par_13,
      																		  :s1_14, :par_14,
      																		  :s1_15, :par_15,
      																		  :s1_16, :par_16,
      																		  :s1_17, :par_17,
      																		  :s1_18, :par_18)
    end

end
