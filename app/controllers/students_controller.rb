class StudentsController < ApplicationController
  def list 
    # here @students is a intnance variable and Sboy is a table name(model)
    @students  = Sboy.all
  end

  def show
    @student = Sboy.find(params[:id])
  end

  def new
    @student = Sboy.new
  end

  def create
    @student = Sboy.new(student_params)
    if @student.save
      redirect_to @student
    else
      render :new, status: :unprocessable_entity
    end
  end

  def student_params
    params.require(:student).permit(:title, :body)
  end

  def index
    @students = Sboy.all
  end

  def create
    @students = Sboy.new(article_params)
    if @students.save
      redirect_to @students
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @students = Sboy.find(params[:id])
  end

  def update
    @students = Sboy.find(params[:id])

    if @students.update(article_params)
      redirect_to @students
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @students = Sboy.find(params[:id])
    @students.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def students_params
      params.require(:students).permit(:title, :body)
    end
end
