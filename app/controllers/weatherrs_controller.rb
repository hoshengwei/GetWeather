class WeatherrsController < ApplicationController
  before_action :set_weatherr, only: [:show, :edit, :update, :destroy]

  # GET /weatherrs
  # GET /weatherrs.json
  def index
    @weatherrs = Weatherr.all
  end

  # GET /weatherrs/1
  # GET /weatherrs/1.json
  def show
  end

  # GET /weatherrs/new
  def new
    @weatherr = Weatherr.new
  end

  # GET /weatherrs/1/edit
  def edit
  end

  # POST /weatherrs
  # POST /weatherrs.json
  def create
    @weatherr = Weatherr.new(weatherr_params)

    respond_to do |format|
      if @weatherr.save
        format.html { redirect_to @weatherr, notice: 'Weatherr was successfully created.' }
        format.json { render :show, status: :created, location: @weatherr }
      else
        format.html { render :new }
        format.json { render json: @weatherr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weatherrs/1
  # PATCH/PUT /weatherrs/1.json
  def update
    respond_to do |format|
      if @weatherr.update(weatherr_params)
        format.html { redirect_to @weatherr, notice: 'Weatherr was successfully updated.' }
        format.json { render :show, status: :ok, location: @weatherr }
      else
        format.html { render :edit }
        format.json { render json: @weatherr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weatherrs/1
  # DELETE /weatherrs/1.json
  def destroy
    @weatherr.destroy
    respond_to do |format|
      format.html { redirect_to weatherrs_url, notice: 'Weatherr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weatherr
      @weatherr = Weatherr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weatherr_params
      params.require(:weatherr).permit(:date)
    end
end
