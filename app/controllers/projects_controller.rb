class ProjectsController < ApplicationController
  # allow_unauthenticated_access only: %i[ index ]
  before_action :set_project, only: %i[show edit update destroy]

  def index
    @projects = Current.user.projects
  end

  def show
    # /projects/1
    # params = { id: "1"}
  end

  def new
    @project = Current.user.projects.new
  end

  def create
    # { project: { name: "" }}
    @project = Current.user.projects.new(project_params)
    if @project.save
      flash[:notice] = "Project created successfully"
      redirect_to project_path(@project)
    else
      puts "Project failed to save"
      puts @project.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      flash[:notice] = "Project updated successfully"
      redirect_to project_path(@project)
    else
      puts "Project failed to save"
      puts @project.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @project.destroy

    flash[:notice] = "Project deleted successfully"
    redirect_to projects_path
  end

  private
  def set_project
    @project = Current.user.projects.find(params[:id])
  end

  def project_params
    # params.require(:project).permit(:name)
    params.expect(project: [ :name ])
  end
end
