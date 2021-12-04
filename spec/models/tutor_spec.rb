# Test suite for the Tutor model
RSpec.describe Tutor, type: :model do
  context 'Association Test' do
    it { should belong_to(:course) }
  end

  context 'Validation Tests' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:age) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:mobile) }
  end
end
