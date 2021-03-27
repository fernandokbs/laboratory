class PcrTypesController < ApplicationController
  before_action :set_pcr_type, only: %i[ show edit update destroy ]

  # GET /pcr_types or /pcr_types.json
  def index
    @pcr_types = PcrType.all
  end

  # GET /pcr_types/1 or /pcr_types/1.json
  def show
  end

  # GET /pcr_types/new
  def new
    @pcr_type = PcrType.new
  end

  # GET /pcr_types/1/edit
  def edit
  end

  # POST /pcr_types or /pcr_types.json
  def create
    @pcr_type = PcrType.new(pcr_type_params)

    respond_to do |format|
      if @pcr_type.save
        format.html { redirect_to @pcr_type, notice: "Pcr type was successfully created." }
        format.json { render :show, status: :created, location: @pcr_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pcr_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pcr_types/1 or /pcr_types/1.json
  def update
    respond_to do |format|
      if @pcr_type.update(pcr_type_params)
        format.html { redirect_to @pcr_type, notice: "Pcr type was successfully updated." }
        format.json { render :show, status: :ok, location: @pcr_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pcr_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pcr_types/1 or /pcr_types/1.json
  def destroy
    @pcr_type.destroy
    respond_to do |format|
      format.html { redirect_to pcr_types_url, notice: "Pcr type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pcr_type
      @pcr_type = PcrType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pcr_type_params
      params.require(:pcr_type).permit(:name)
    end
end
