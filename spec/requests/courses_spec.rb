describe 'Courses' do
  describe 'GET api/v1/courses' do
    it 'should return all the courses' do
      get api_v1_courses_path

      expect(response.status).to eq(200)
    end
  end

  describe 'POST api/v1/courses' do
    it 'should create the course' do
      post api_v1_courses_path, params: { course: { title: Faker::Name.name, description: Faker::Lorem.unique } }

      expect(response.status).to eq(201)
    end
  end
end
