class HomeController < ApplicationController
  def about
  end

  def welcome
    @names = User.all.map(&:name)
    respond_to do |format|
      format.html
      format.json { render json: @names }
    end
  end
end
