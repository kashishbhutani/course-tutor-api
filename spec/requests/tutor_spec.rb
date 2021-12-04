describe 'Tutors' do
  describe 'POST api/v1/courses/:course_id/tutor' do
    it 'should throw 404 error for invalid course' do
      post api_v1_course_tutors_path(Faker::Number.digit), params: { tutor: { name: Faker::Name.name } }

      expect(response.status).to eq(404)
    end
  end

  describe 'POST api/v1/courses/:course_id/tutor' do
    it 'should create tutor for valid course' do
      course = FactoryBot.create(:course)

      post api_v1_course_tutors_path(course.id), params: {
        tutor: {
          name: Faker::Name.name,
          age: Faker::Number.digit,
          email: Faker::Internet.email,
          mobile: Faker::PhoneNumber.cell_phone
        }
      }

      expect(response.status).to eq(201)
    end
  end
end
