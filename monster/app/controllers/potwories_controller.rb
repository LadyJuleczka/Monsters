class PotworiesController < ApplicationController
  before_action :set_potwory, only: [:show, :edit, :update, :destroy]

  # GET /potwories
  # GET /potwories.json
  def index
    @potwories = Potwory.all
  end

  # GET /potwories/1
  # GET /potwories/1.json
  def show
  end

  # GET /potwories/new
  def new
    @potwory = Potwory.new
  end

  # GET /potwories/1/edit
  def edit
  end

  # POST /potwories
  # POST /potwories.json
  def create
    @potwory = Potwory.new(potwory_params)

    respond_to do |format|
      if @potwory.save
        format.html { redirect_to @potwory, notice: 'Potwory was successfully created.' }
        format.json { render :show, status: :created, location: @potwory }
      else
        format.html { render :new }
        format.json { render json: @potwory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /potwories/1
  # PATCH/PUT /potwories/1.json
  def update
    respond_to do |format|
      if @potwory.update(potwory_params)
        format.html { redirect_to @potwory, notice: 'Potwory was successfully updated.' }
        format.json { render :show, status: :ok, location: @potwory }
      else
        format.html { render :edit }
        format.json { render json: @potwory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potwories/1
  # DELETE /potwories/1.json
  def destroy
    @potwory.destroy
    respond_to do |format|
      format.html { redirect_to potwories_url, notice: 'Potwory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_potwory
      @potwory = Potwory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def potwory_params
      params.require(:potwory).permit(:nazwa, :opis, :wiek, :wrazliwosc)
    end
end
