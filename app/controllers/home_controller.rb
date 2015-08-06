class HomeController < ApplicationController
  def index
	@mom = Category.find(1)
	@family = Category.find(2)
	@train = Category.find(3)
	@shop = Category.find(4)

  end
end

  
