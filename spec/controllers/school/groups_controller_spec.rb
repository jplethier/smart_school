require 'spec_helper'

describe School::GroupsController do
  include Devise::TestHelpers
  
  let(:current_school) { FactoryGirl.create(:school) }
  let!(:group) { FactoryGirl.create(:group, school: current_school) }
  
  before do
    sign_in(:school, current_school)
  end

  describe "GET 'index'" do
    before do
      get 'index'
    end

    it { should respond_with(:success) }
    it { should assign_to(:groups) }
    it { should render_template(:index) }
    it { should render_with_layout(:application) }
    it { should respond_with_content_type(:html) }
  end

  describe "POST 'create'" do

    it 'should not create the group without a name' do
      expect { post :create, group: { name: nil } }.to_not change{ Group.count }
    end

    it 'should create the group when all fields is filled in' do
      expect { post :create, group: { name: 'Turma A1' } }.to change{ Group.count }.by(1)
    end
  end

  describe "POST 'update'" do
    it 'should change the name of group' do
      expect { post :update, id: group.id, group: { name: 'Novo Nome' } }.to change{ group.reload; group.name }.to('Novo Nome')
    end
  end

  describe "GET 'new'" do
  before do
      get 'new'
    end

    it { should respond_with(:success) }
    it { should assign_to(:group) }
    it { should render_template(:new) }
    it { should render_with_layout(:application) }
    it { should respond_with_content_type(:html) }
  end

  describe "GET 'show'" do
    before do
      get 'show', { :id => group.id }
    end

    it { should respond_with(:success) }
    it { should assign_to(:group) }
    it { should render_template(:show) }
    it { should render_with_layout(:application) }
    it { should respond_with_content_type(:html) }
  end

  describe "GET 'edit'" do
    before do
      get 'edit', { :id => group.id }
    end
    
    it { should respond_with(:success) }
    it { should assign_to(:group) }
    it { should render_template(:edit) }
    it { should render_with_layout(:application) }
    it { should respond_with_content_type(:html) }
  end
end