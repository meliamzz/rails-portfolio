class FeaturesController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @feature = Feature.new
  end

  def create
    @feature = Feature.new(feature_params)
    @project = Project.find(params[:project_id])
    @feature.project = @project
    if @feature.save
      redirect_to project_features_path
    else
      render :new
    end
  end

  def index
    @project = Project.find(params[:project_id])
    @features = @project.features
  end

  def edit
    @project = Project.find(params[:project_id])
    @feature = Feature.find(params[:id])
  end

  private

  def feature_params
    params.require(:feature).permit(:description, :photo)
  end
end
