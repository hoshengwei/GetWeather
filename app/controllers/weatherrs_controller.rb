class WeatherrsController < ApplicationController
  before_action :set_weatherr, only: [:show, :edit, :update, :destroy]

  # GET /weatherrs
  # GET /weatherrs.json
  def index
    @weatherrs = Weatherr.all
  end
  def update
    
  end
end
