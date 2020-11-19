class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks_to_do = Task.all.where(check: false).order('updated_at DESC')
    @tasks_done = Task.all.where(check: true).order('updated_at DESC')
  end

  def create
    @task = Task.create(task_params)
    respond_to do |format|
      format.html { redirect_to tasks_path, notice: 'Task was successfully created.' }
      format.js { }
    end
  end

  def update
    @task.update(task_params)
    respond_to do |format|
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.js { }
      end
  end

  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Task was successfully destroyed.' }
      format.js { }

    end
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.permit(:title, :description, :check)
    end
end
