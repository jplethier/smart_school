require 'spec_helper'

describe Enrollment do
  let(:enrollment) { FactoryGirl.create(:enrollment) }
  
  subject { enrollment }

  it { should respond_to(:school) }
  it { should respond_to(:student) }
  it { should respond_to(:enrollment_number) }
  
  describe "Accessibility" do
    it { should allow_mass_assignment_of(:enrollment_number) }
    it { should allow_mass_assignment_of(:school_id) }
    it { should allow_mass_assignment_of(:student_id) }
    it { should_not allow_mass_assignment_of(:id) }
  end
  
  describe 'validations' do
    it { should validate_presence_of(:school_id) }
    it { should validate_presence_of(:student_id) }
    it { should validate_presence_of(:enrollment_number) }
  end
end
