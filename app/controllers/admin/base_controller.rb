class Admin::BaseController < ApplicationController

  before_action :authenticate_user!
  before_action :admin_required!

  private

  def admin_required!
    redirect_to root_path if, alert: 'You are not allowed to view this page' unless current_user.is_a?(Admin)
  end


end
