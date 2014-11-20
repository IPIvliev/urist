class StaticPagesController < ApplicationController
  def index
  end

  def contact
    @apeal = Apeal.new
  end

  def services
  end

  def blog
  end

  def about
  end
end
