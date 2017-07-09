class OrganisationsController < ApplicationController
  before_action :authenticate_organisation!

  layout "organisations"

  def index
  end

  def new
  end

  def email
  end



  def members
  end

  def sms
  end

end
