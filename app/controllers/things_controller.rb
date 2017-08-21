class ThingsController < ApplicationController
  def upvote
    @thing = Thing.find(params[:id])
    @thing.votes.create
    redirect_to root_path
  end

  def downvote
    @thing = Thing.find(params[:id])
    x = @thing.votes.count
    if x > 0
      @thing.votes.first.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
end
