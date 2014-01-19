class HomeController < ApplicationController
  def index
  	@features = Feature.all
  end

  def subscribe
  	@feature = Feature.find(params[:id])
  	@feature.add_subscriber(params[:email])

  	redirect_to root_path, notice: "Du er nu skrevet på: '#{@feature.name}' :)"
  end
end
