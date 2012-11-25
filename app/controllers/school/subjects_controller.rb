#coding: utf-8
class School::SubjectsController < School::ApplicationController
  
  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(params[:subject])
    @subject.school = current_school
    if @subject.save
      redirect_to school_subject_path(@subject), success: I18n.t('messages.update.success', model: 'Matéria')
    else
      flash.now[:error] = I18n.t('messages.create.error', model: 'Matéria')
      render 'new'
    end
  end

  def show
    @subject = current_school.subjects.find(params[:id])
  end

  def edit
    @subject = current_school.subjects.find(params[:id])
  end

  def update
    @subject = current_school.subjects.find(params[:id])
    if @subject.update_attributes(params[:subject])
      redirect_to school_subject_path(@subject), success: I18n.t('messages.update.success', model: 'Matéria')
    else
      flash.now[:error] = I18n.t('messages.update.error', model: 'Matéria')
      render 'edit'
    end
  end

  def index
    @subjects = current_school.subjects
  end
end
