class MembershipdataController < ApplicationController
   before_action :authenticate_organisation!

  layout "organisations"

  def index
  end

  def members
  end

      #membershipdatum = Membershipdatum.find_by(id: row["id"]) || new
      #dt = current_organisation.membershipdata.build
      #membershipdatum.attributes = row.to_hash
      #membershipdatum.save!
      #mem.save!



  def import
    Membershipdatum.import(params[:file], current_organisation.id)
    redirect_to membershipdata_url
  end

  def membershipdata_params
    params.require(:Membershipdatum).permit(:FirstName,:LastName,:YearCompleted,:Email,:Organisation,:WorkPlace,:PhoneNumber)
  end
end
