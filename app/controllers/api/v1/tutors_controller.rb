class Api::V1::TutorsController < ApplicationController
  # Filters
  before_action :set_course, only: %i[create show]
  before_action :set_tutor, only: :show

  # POST api/v1/courses/:course_id/tutors
  def create
    tutor = @course.tutors.build(tutor_params)

    render_data(tutor, :created) if tutor.save!
  end

  # GET api/v1/courses/:course_id/tutors/:tutor_id
  def show
    render_data(@tutor, :ok)
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end

  def set_tutor
    @tutor = Tutor.find_by!(course_id: @course.id)
  end

  # Whitelist parameters
  def tutor_params
    params.require(:tutor).permit(:name, :age, :email, :mobile)
  end
end
