require 'spec_helper'

describe Student do
  let(:student) { FactoryGirl.create(:student) }
  
  subject { student }

  it { should respond_to(:enrollments) }
  it { should respond_to(:schools) }
  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:enrollment_number) }
  it { should respond_to(:school_id) }
  
  describe "Accessibility" do
    it { should allow_mass_assignment_of(:school_id) }
    it { should allow_mass_assignment_of(:enrollment_number) }
    it { should allow_mass_assignment_of(:email) }
    it { should allow_mass_assignment_of(:password) }
    it { should allow_mass_assignment_of(:password_confirmation) }
    it { should_not allow_mass_assignment_of(:id) }
  end
  
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_confirmation_of(:password) }
    it { should validate_uniqueness_of(:email) }
  end

  it 'admin?' do
    student.admin?.should == false
  end

  it 'student?' do
    student.student?.should == true
  end

  it 'school?' do
    student.school?.should == false
  end

  it 'teacher?' do
    student.teacher?.should == false
  end
end