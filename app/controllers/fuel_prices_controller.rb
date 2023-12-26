class FuelPricesController < ApplicationController
  before_action :set_fuel_price, only: %i[ show edit update destroy ]

  # GET /fuel_prices or /fuel_prices.json
  def index
    @fuel_prices = FuelPrice.all
  end

  # GET /fuel_prices/1 or /fuel_prices/1.json
  def show
  end

  # GET /fuel_prices/new
  def new
    @fuel_price = FuelPrice.new
  end

  # GET /fuel_prices/1/edit
  def edit
  end

  # POST /fuel_prices or /fuel_prices.json
  def create
    @fuel_price = FuelPrice.new(fuel_price_params)

    respond_to do |format|
      if @fuel_price.save
        format.html { redirect_to fuel_price_url(@fuel_price), notice: "Fuel price was successfully created." }
        format.json { render :show, status: :created, location: @fuel_price }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fuel_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fuel_prices/1 or /fuel_prices/1.json
  def update
    respond_to do |format|
      if @fuel_price.update(fuel_price_params)
        format.html { redirect_to fuel_price_url(@fuel_price), notice: "Fuel price was successfully updated." }
        format.json { render :show, status: :ok, location: @fuel_price }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fuel_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fuel_prices/1 or /fuel_prices/1.json
  def destroy
    @fuel_price.destroy

    respond_to do |format|
      format.html { redirect_to fuel_prices_url, notice: "Fuel price was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fuel_price
      @fuel_price = FuelPrice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fuel_price_params
      params.require(:fuel_price).permit(:jet_a_self_service, :jet_a_full_service, :ll_self_service, :ll_full_service)
    end
end
