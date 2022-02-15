class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_project, only: [ :show, :destroy, :edit, :update ]
  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to new_project_feature_path(@project)
    else
      render :new
    end
  end

  def destroy
    @project.destroy
    redirect_to admin_path
  end

  def edit
  end

  def update
    @project.update(project_params)
    redirect_to admin_path
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :language, :description, :github, :url, :img_folder, :photo, :photo_description)
  end
end
