class Admins::BaseController < ApplicationController

  before_action :authenticate_admin!

  def flash_created
    flash.notice = "Created Successfully."
  end

  def flash_updated
    flash.notice = "Updated Successfully."
  end
end
