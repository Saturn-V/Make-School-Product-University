class PoliticiansController < ApplicationController
  def index
      party = params[:party]

      if party.nil?
          @politicians = Politician.all
      else
          @politicians = Politician.where(party: party)
      end
  end

  def show
    @politician = Politician.find(params[:id])
  end
end
