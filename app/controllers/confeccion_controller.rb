class ConfeccionController < ApplicationController
  before_action :set_confeccion, only: [:show, :edit, :update, :destroy]

  # GET /confeccion
  # GET /confeccion.json
  def index
    @confeccion = Confeccion.all
  end

  # GET /confeccion/1
  # GET /confeccion/1.json
  def show
  end

  # GET /confeccion/new
  def new
    @confeccion = Confeccion.new
  end

  # GET /confeccion/1/edit
  def edit
  end

  # POST /confeccion
  # POST /confeccion.json
  def create
    @confeccion = Confeccion.new(confeccion_params)

    respond_to do |format|
      if @confeccion.save
        format.html { redirect_to @confeccion, notice: 'Confeccion was successfully created.' }
        format.json { render :show, status: :created, location: @confeccion }
      else
        format.html { render :new }
        format.json { render json: @confeccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /confeccion/1
  # PATCH/PUT /confeccion/1.json
  def update
    respond_to do |format|
      if @confeccion.update(confeccion_params)
        format.html { redirect_to @confeccion, notice: 'Confeccion was successfully updated.' }
        format.json { render :show, status: :ok, location: @confeccion }
      else
        format.html { render :edit }
        format.json { render json: @confeccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confeccion/1
  # DELETE /confeccion/1.json
  def destroy
    @confeccion.destroy
    respond_to do |format|
      format.html { redirect_to confeccion_index_url, notice: 'Confeccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_confeccion
      @confeccion = Confeccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def confeccion_params
      params.require(:confeccion).permit(:ficha_id, :programa_id)
    end
end
