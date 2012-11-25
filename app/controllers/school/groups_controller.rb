class School::GroupsController < School::ApplicationController

  def index
    @groups = current_school.groups
  end

  def update
    @group = current_school.groups.find(params[:id])
    binding.pry
    if @group.update_attributes(params[:group])
      redirect_to school_group_path(@group), success: I18n.t('messages.update.success', model: 'Turma')
    else
      flash.now[:error] = I18n.t('messages.update.error', model: 'Turma')
      render 'edit'
    end
  end

  def create
    @group = Group.new(params[:group])
    @group.school_id = current_school.id
    if @group.save
      redirect_to school_group_path(@group), success: I18n.t('messages.update.success', model: 'Turma')
    else
      flash.now[:error] = I18n.t('messages.create.error', model: 'Turma')
      render 'new'
    end
  end

  def new
    @group = Group.new
  end

  def show
    @group = current_school.groups.find(params[:id])
  end

  def edit
    @group = current_school.groups.find(params[:id])
  end
end
