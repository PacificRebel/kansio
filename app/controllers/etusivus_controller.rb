class EtusivusController < ApplicationController
  before_action :set_etusivu, only: [:show, :edit, :update, :destroy]

  # GET /etusivus
  # GET /etusivus.json
  def index
    @etusivus = Etusivu.all
  end

  # GET /etusivus/1
  # GET /etusivus/1.json
  def show
  end

  # GET /etusivus/new
  def new
    @etusivu = Etusivu.new
  end

  # GET /etusivus/1/edit
  def edit
  end

  # POST /etusivus
  # POST /etusivus.json
  def create
    @etusivu = Etusivu.new(etusivu_params)

    respond_to do |format|
      if @etusivu.save
        format.html { redirect_to @etusivu, notice: 'Etusivu was successfully created.' }
        format.json { render :show, status: :created, location: @etusivu }
      else
        format.html { render :new }
        format.json { render json: @etusivu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etusivus/1
  # PATCH/PUT /etusivus/1.json
  def update
    respond_to do |format|
      if @etusivu.update(etusivu_params)
        format.html { redirect_to @etusivu, notice: 'Etusivu was successfully updated.' }
        format.json { render :show, status: :ok, location: @etusivu }
      else
        format.html { render :edit }
        format.json { render json: @etusivu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etusivus/1
  # DELETE /etusivus/1.json
  def destroy
    @etusivu.destroy
    respond_to do |format|
      format.html { redirect_to etusivus_url, notice: 'Etusivu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etusivu
      @etusivu = Etusivu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def etusivu_params
      params.fetch(:etusivu, {})
    end
end
