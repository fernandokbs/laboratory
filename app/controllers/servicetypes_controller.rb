class ServicetypesController < ApplicationController
  before_action :set_servicetype, only: %i[ show edit update destroy ]

  # GET /servicetypes or /servicetypes.json
  def index
    @servicetypes = Servicetype.all
  end

  # GET /servicetypes/1 or /servicetypes/1.json
  def show
  end

  # GET /servicetypes/new
  def new
    @servicetype = Servicetype.new
  end

  # GET /servicetypes/1/edit
  def edit
  end

  # POST /servicetypes or /servicetypes.json
  def create
    @servicetype = Servicetype.new(servicetype_params)

    respond_to do |format|
      if @servicetype.save
        format.html { redirect_to @servicetype, notice: "Servicetype was successfully created." }
        format.json { render :show, status: :created, location: @servicetype }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @servicetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servicetypes/1 or /servicetypes/1.json
  def update
    respond_to do |format|
      if @servicetype.update(servicetype_params)
        format.html { redirect_to @servicetype, notice: "Servicetype was successfully updated." }
        format.json { render :show, status: :ok, location: @servicetype }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @servicetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicetypes/1 or /servicetypes/1.json
  def destroy
    @servicetype.destroy
    respond_to do |format|
      format.html { redirect_to servicetypes_url, notice: "Servicetype was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servicetype
      @servicetype = Servicetype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def servicetype_params
      params.require(:servicetype).permit(:name)
    end
end
