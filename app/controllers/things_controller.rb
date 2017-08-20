class ThingsController < ApplicationController
  def upvote
    @thing = Thing.find(params[:id])
    @thing.votes.create
    redirect_to root_path
  end

  def downvote
    @thing = Thing.find(params[:id])
    @thing.votes.first.destroy
    redirect_to root_path
  end
end
