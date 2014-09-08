class AprendicesController < ApplicationController
  before_action :set_aprendiz, only: [:show, :edit, :update, :destroy]

  # GET /aprendices
  # GET /aprendices.json
  def index
    @aprendices = Aprendiz.search(params[:search], params[:page])
  end

  # GET /aprendices/1
  # GET /aprendices/1.json
  def show
  end

  # GET /aprendices/new
  def new
    @aprendiz = Aprendiz.new
  end

  # GET /aprendices/1/edit
  def edit
  end

  # POST /aprendices
  # POST /aprendices.json
  def create
    @aprendiz = Aprendiz.new(aprendiz_params)

    respond_to do |format|
      if @aprendiz.save
        format.html { redirect_to @aprendiz, notice: 'Aprendiz creado satisfactoriamente.' }
        format.json { render :show, status: :created, location: @aprendiz }
      else
        format.html { render :new }
        format.json { render json: @aprendiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aprendices/1
  # PATCH/PUT /aprendices/1.json
  def update
    respond_to do |format|
      if @aprendiz.update(aprendiz_params)
        format.html { redirect_to @aprendiz, notice: 'Aprendiz actualizado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @aprendiz }
      else
        format.html { render :edit }
        format.json { render json: @aprendiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aprendices/1
  # DELETE /aprendices/1.json
  def destroy
    @aprendiz.destroy
    respond_to do |format|
      format.html { redirect_to aprendices_url, notice: 'Aprendiz eliminado satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aprendiz
      @aprendiz = Aprendiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aprendiz_params
      params.require(:aprendiz).permit(:nombre, :apellido, :identificacion, :centro_id, :programa_id, :ficha)
    end
end
