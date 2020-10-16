class CepasController < ApplicationController
  before_action :set_cepa, only: [:show, :edit, :update, :destroy]

  # GET /cepas
  # GET /cepas.json
  def index
    @cepas = Cepa.all
  end

  # GET /cepas/1
  # GET /cepas/1.json
  def show
  end

  # GET /cepas/new
  def new
    @cepa = Cepa.new
  end

  # GET /cepas/1/edit
  def edit
  end

  # POST /cepas
  # POST /cepas.json
  def create
    @cepa = Cepa.new(cepa_params)
    @wine = Wine.find(params[:wine_id])
    @wine.cepas << @cepa

    respond_to do |format|
      if @cepa.save
        format.html { redirect_back fallback_location: '/', notice: 'Cepa was successfully created.' }
        format.json { render :show, status: :created, location: @cepa }
      else
        format.html { render :new }
        format.json { render json: @cepa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cepas/1
  # PATCH/PUT /cepas/1.json
  def update
    respond_to do |format|
      if @cepa.update(cepa_params)
        format.html { redirect_to @cepa, notice: 'Cepa was successfully updated.' }
        format.json { render :show, status: :ok, location: @cepa }
      else
        format.html { render :edit }
        format.json { render json: @cepa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cepas/1
  # DELETE /cepas/1.json
  def destroy
    @cepa.destroy
    respond_to do |format|
      format.html { redirect_to cepas_url, notice: 'Cepa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cepa
      @cepa = Cepa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cepa_params
      params.permit(:name)
    end
end
