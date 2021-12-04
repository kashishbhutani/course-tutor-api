class CourseSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :tutors

  def tutors
    object.tutors.map do |tutor|
      {
        id: tutor.id,
        name: tutor.name,
        email: tutor.email,
        age: tutor.age
      }
    end
  end
end
