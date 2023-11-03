class ProfilesController < ApplicationController
  skip_before_action :protect_pages
  before_action :set_profile
  def index
  end

  def edit
  end

  def update
  end

  private
  def set_profile
  @profile = current_user
  end
end
