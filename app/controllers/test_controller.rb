class TestController < ApplicationController

  def example
  end

  def search
    render plain: params[:query]
  end

end