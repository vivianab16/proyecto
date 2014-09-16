class MobiliariosController < ApplicationController
  before_action :set_mobiliario, only: [:show, :edit, :update, :destroy]

  # GET /mobiliarios
  # GET /mobiliarios.json
  def index
    @mobiliarios = Mobiliario.all
  end

  # GET /mobiliarios/1
  # GET /mobiliarios/1.json
  def show
  end

  # GET /mobiliarios/new
  def new
    @mobiliario = Mobiliario.new
  end

  # GET /mobiliarios/1/edit
  def edit
  end

  # POST /mobiliarios
  # POST /mobiliarios.json
  def create
    @mobiliario = Mobiliario.new(mobiliario_params)

    respond_to do |format|
      if @mobiliario.save
        format.html { redirect_to @mobiliario, notice: 'Mobiliario was successfully created.' }
        format.json { render :show, status: :created, location: @mobiliario }
      else
        format.html { render :new }
        format.json { render json: @mobiliario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mobiliarios/1
  # PATCH/PUT /mobiliarios/1.json
  def update
    respond_to do |format|
      if @mobiliario.update(mobiliario_params)
        format.html { redirect_to @mobiliario, notice: 'Mobiliario was successfully updated.' }
        format.json { render :show, status: :ok, location: @mobiliario }
      else
        format.html { render :edit }
        format.json { render json: @mobiliario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mobiliarios/1
  # DELETE /mobiliarios/1.json
  def destroy
    @mobiliario.destroy
    respond_to do |format|
      format.html { redirect_to mobiliarios_url, notice: 'Mobiliario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mobiliario
      @mobiliario = Mobiliario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mobiliario_params
      params.require(:mobiliario).permit(:ficha_id, :programa_id)
    end
end
