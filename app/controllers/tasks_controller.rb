class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:success] = "タスク#{@task.name} を登録しました。"
      redirect_to tasks_url
    else
      render 'new'
    end 
  end

  def edit
  end

  def task_params 
    #paramsとして与えられたデータをrequire(:task)モデルでpermitする(:name, :description)を
    params.require(:task).permit(:name, :description)
  end 
end
