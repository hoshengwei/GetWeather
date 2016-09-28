class WeatherrsController < ApplicationController
  before_action :set_weatherr, only: [:show, :edit, :update, :destroy]

  # GET /weatherrs
  # GET /weatherrs.json
  def index
    @weatherrs = Weatherr.last(30).reverse
  end
  def update

  end
end
