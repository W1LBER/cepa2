class WinemakersController < ApplicationController
  before_action :set_winemaker, only: [:show, :edit, :update, :destroy]

  # GET /winemakers
  # GET /winemakers.json
  def index
    @winemakers = Winemaker.all
  end

  # GET /winemakers/1
  # GET /winemakers/1.json
  def show
  end

  # GET /winemakers/new
  def new
    @winemaker = Winemaker.new
    @positions = Position.all
    @magazines = Magazine.all
  end

  # GET /winemakers/1/edit
  def edit
  end

  # POST /winemakers
  # POST /winemakers.json
  def create

    @winemaker = Winemaker.new(winemaker_params)

    respond_to do |format|
      if @winemaker.save
        format.html { redirect_to @winemaker, notice: 'Winemaker was successfully created.' }
        format.json { render :show, status: :created, location: @winemaker }
      else
        format.html { render :new }
        format.json { render json: @winemaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /winemakers/1
  # PATCH/PUT /winemakers/1.json
  def update
    respond_to do |format|
      if @winemaker.update(winemaker_params)
        format.html { redirect_to @winemaker, notice: 'Winemaker was successfully updated.' }
        format.json { render :show, status: :ok, location: @winemaker }
      else
        format.html { render :edit }
        format.json { render json: @winemaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /winemakers/1
  # DELETE /winemakers/1.json
  def destroy
    @winemaker.destroy
    respond_to do |format|
      format.html { redirect_to winemakers_url, notice: 'Winemaker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_winemaker
      @winemaker = Winemaker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def winemaker_params
      params.require(:winemaker).permit(:name, :age, :country, :position_id, :magazine_id)
    end
end
