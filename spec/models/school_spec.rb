require 'spec_helper'

describe School do
  let(:school) { FactoryGirl.create(:school) }
  
  subject { school }

  it { should respond_to(:enrollments) }
  it { should respond_to(:students) }
  it { should respond_to(:teachers) }
  it { should respond_to(:groups) }
  it { should respond_to(:jobs) }
  it { should respond_to(:subjects) }
  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  
  describe "Accessibility" do
    it { should allow_mass_assignment_of(:name) }
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

  describe 'Associations' do
    it { should have_many(:teachers) }
    it { should have_many(:students) }
    it { should have_many(:enrollments) }
    it { should have_many(:jobs) }
    it { should have_many(:subjects) }
    it { should have_many(:groups) }
  end

  it 'admin?' do
    school.admin?.should == false
  end

  it 'student?' do
    school.student?.should == false
  end

  it 'school?' do
    school.school?.should == true
  end

  it 'teacher?' do
    school.teacher?.should == false
  end
end