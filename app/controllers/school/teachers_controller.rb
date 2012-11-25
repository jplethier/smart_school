# coding: utf-8
class School::TeachersController < School::ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(params[:teacher])
    @teacher.schools << current_school
    @teacher.password = '123qwe'
    @teacher.password_confirmation = '123qwe'
    if @teacher.save
      flash[:alert] = "Senha gerada automaticamente: '123qwe'"
      redirect_to school_teacher_path(@teacher), success: I18n.t('messages.update.success', model: 'Professor')
    else
      flash.now[:error] = I18n.t('messages.create.error', model: 'Professor')
      render 'new'
    end
  end

  def show
    @teacher = current_school.teachers.find(params[:id])
  end

  def edit
    @teacher = current_school.teachers.find(params[:id])
  end

  def update
    @teacher = current_school.teachers.find(params[:id])
    if @teacher.update_attributes(params[:teacher])
      redirect_to school_teacher_path(@teacher), success: I18n.t('messages.update.success', model: 'Professor')
    else
      flash.now[:error] = I18n.t('messages.update.error', model: 'Professor')
      render 'edit'
    end
  end

  def index
    @teachers = current_school.teachers
  end
end
