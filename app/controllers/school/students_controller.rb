# coding: utf-8
class School::StudentsController < School::ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params[:student])
    @student.school_id = current_school.id
    @student.password = '123qwe'
    @student.password_confirmation = '123qwe'
    if @student.save
      flash[:alert] = "Senha temporária automaticamente: '123qwe'"
      redirect_to school_student_path(@student), success: I18n.t('messages.update.success', model: 'Aluno')
    else
      flash.now[:error] = I18n.t('messages.create.error', model: 'Aluno')
      render 'new'
    end
  end

  def show
    @student = current_school.students.find(params[:id])
  end

  def edit
    @student = current_school.students.find(params[:id])
  end

  def update
    @student = current_school.students.find(params[:id])
    if @student.update_attributes(params[:student])
      redirect_to school_student_path(@student), success: I18n.t('messages.update.success', model: 'Aluno')
    else
      flash.now[:error] = I18n.t('messages.update.error', model: 'Aluno')
      render 'edit'
    end
  end

  def index
    @students = current_school.students
  end
end
