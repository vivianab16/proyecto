class CuerosController < ApplicationController
  before_action :set_cuero, only: [:show, :edit, :update, :destroy]

  # GET /cueros
  # GET /cueros.json
  def index
    @cueros = Cuero.all
  end

  # GET /cueros/1
  # GET /cueros/1.json
  def show
  end

  # GET /cueros/new
  def new
    @cuero = Cuero.new
  end

  # GET /cueros/1/edit
  def edit
  end

  # POST /cueros
  # POST /cueros.json
  def create
    @cuero = Cuero.new(cuero_params)

    respond_to do |format|
      if @cuero.save
        format.html { redirect_to @cuero, notice: 'Cuero was successfully created.' }
        format.json { render :show, status: :created, location: @cuero }
      else
        format.html { render :new }
        format.json { render json: @cuero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cueros/1
  # PATCH/PUT /cueros/1.json
  def update
    respond_to do |format|
      if @cuero.update(cuero_params)
        format.html { redirect_to @cuero, notice: 'Cuero was successfully updated.' }
        format.json { render :show, status: :ok, location: @cuero }
      else
        format.html { render :edit }
        format.json { render json: @cuero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cueros/1
  # DELETE /cueros/1.json
  def destroy
    @cuero.destroy
    respond_to do |format|
      format.html { redirect_to cueros_url, notice: 'Cuero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuero
      @cuero = Cuero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cuero_params
      params.require(:cuero).permit(:ficha_id, :programa_id)
    end
end
