class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def done?
    if @task.completed == true
      puts 'This task is done'
    else
      puts 'This task is not done'
    end
  end
end
