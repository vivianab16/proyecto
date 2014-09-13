class InstructoresController < ApplicationController
  before_action :set_instructor, only: [:show, :edit, :update, :destroy]

  # GET /instructores
  # GET /instructores.json
  def index
    @instructores = Instructor.search(params[:search], params[:page])
  end

  # GET /instructores/1
  # GET /instructores/1.json
  def show
  end

  # GET /instructores/new
  def new
    @instructor = Instructor.new
  end

  # GET /instructores/1/edit
  def edit
  end

  # POST /instructores
  # POST /instructores.json
  def create
    @instructor = Instructor.new(instructor_params)

    respond_to do |format|
      if @instructor.save
        format.html { redirect_to @instructor, notice: 'Instructor creado satisfactoriamente.' }
        format.json { render :show, status: :created, location: @instructor }
      else
        format.html { render :new }
        format.json { render json: @instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instructores/1
  # PATCH/PUT /instructores/1.json
  def update
    respond_to do |format|
      if @instructor.update(instructor_params)
        format.html { redirect_to @instructor, notice: 'Instructor actualizado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @instructor }
      else
        format.html { render :edit }
        format.json { render json: @instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instructores/1
  # DELETE /instructores/1.json
  def destroy
    @instructor.destroy
    respond_to do |format|
      format.html { redirect_to instructores_url, notice: 'Instructor eliminado satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instructor
      @instructor = Instructor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instructor_params
      params.require(:instructor).permit(:nombre, :apellidos, :identificacion, :centro_id, :programa_id)
    end
end
