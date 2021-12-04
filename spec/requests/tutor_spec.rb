describe 'Tutors' do
  describe 'POST api/v1/courses/:course_id/tutor' do
    it 'should throw 404 error for invalid course' do
      post api_v1_course_tutors_path(Faker::Number.digit), params: { tutor: { name: Faker::Name.name } }

      expect(response.status).to eq(404)
    end
  end
end
