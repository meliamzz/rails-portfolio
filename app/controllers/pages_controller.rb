class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :skills]

  def home
  end

  def about
  end

  def skills
  end
end
