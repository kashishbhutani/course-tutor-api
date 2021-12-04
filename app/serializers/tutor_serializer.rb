class TutorSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :mobile, :course

  def course
    object.course
  end
end
