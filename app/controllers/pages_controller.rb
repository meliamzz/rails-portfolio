class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :skills, :images]

  def home
  end

  def about
  end

  def skills
  end

  def admin
    @messages = Contact.all
    @projects = Project.all
  end

  def images
  end
end
