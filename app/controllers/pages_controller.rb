class PagesController < ApplicationController
  def home
    @thing = Thing.all.sample
    @name = @thing.name
    @image = @thing.image
  end
end
