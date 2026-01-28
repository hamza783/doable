class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    # /projects/1
    # params = { id: "1"}
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    # { project: { name: "" }}
    @project = Project.new(project_params)
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
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
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
    @project = Project.find(params[:id])

    @project.destroy

    flash[:notice] = "Project deleted successfully"
    redirect_to projects_path
  end

  def project_params
    # params.require(:project).permit(:name)
    params.expect(project: [ :name ])
  end
end
