class Api::V1::CoursesController < ApplicationController
  # GET api/v1/courses
  def index
    courses = Course.all.includes(:tutors) || []

    render_data(courses, :ok)
  end

  # POST api/v1/courses
  def create
    course = Course.new(course_params)

    render_data(course, :created) if course.save!
  end

  private

  # Whitelist parameters
  def course_params
    params.require(:course).permit(:title, :description)
  end
end
