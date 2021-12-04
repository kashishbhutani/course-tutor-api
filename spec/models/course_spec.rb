# Test suite for the Course model
RSpec.describe Course, type: :model do
  context 'Association Test' do
    it { should have_many(:tutors) }
  end

  context 'Validation Tests' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
  end
end
