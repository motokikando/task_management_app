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
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      flash[:success] = "タスク#{@task.name} を更新しました。"
      redirect_to tasks_url
    else
      render 'edit'
  end 

   end

  def task_params 
    #paramsとして与えられたデータをrequire(:task)モデルでpermitする(:name, :description)を
    params.require(:task).permit(:name, :description)
  end 
end
