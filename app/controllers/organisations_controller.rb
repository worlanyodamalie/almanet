class OrganisationsController < ApplicationController
  before_action :authenticate_organisation!

  def index
  end
end
