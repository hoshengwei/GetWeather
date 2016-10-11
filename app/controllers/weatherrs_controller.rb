
class WeatherrsController < ApplicationController
  before_action :set_weatherr, only: [:show, :edit, :update, :destroy]

  # GET /weatherrs
  # GET /weatherrs.json
  def index
    @weatherrs = Weatherr.last(30).reverse
  end
  def update
  end
  def find
    @yy = params[:year]
    @mm = params[:month]
    @dd = params[:day]
    system "bin/rake update[#{@yy},#{@mm},#{@dd}]"
    redirect_to weatherrs_path
  end
  def show
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_weatherr
    @weatherr = Weatherr.find(params[:id])
  end
end
