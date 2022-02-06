class FeaturesController < ApplicationController
  before_action :set_project, except: [:show]
  before_action :set_feature, only: [:edit, :update, :destroy]
  def new
    @feature = Feature.new
  end

  def create
    @feature = Feature.new(feature_params)
    @feature.project = @project
    if @feature.save
      redirect_to project_features_path
    else
      render :new
    end
  end

  def index
    @features = @project.features
  end

  def edit
  end

  def update
    @feature.update(feature_params)
    redirect_to project_features_path(@project)
  end

  def destroy
    @feature.destroy
    redirect_to project_features_path(@project)
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_feature
    @feature = Feature.find(params[:id])
  end

  def feature_params
    params.require(:feature).permit(:description, :photo)
  end
end
