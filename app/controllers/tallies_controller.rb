class TalliesController < ApplicationController

  def new
    u = User.find_by(userID: params[:userID])
    u.tallies.create

    redirect_to :controller => 'users', :action => 'show', :userID => u.userID
  end
end
