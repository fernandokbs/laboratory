class TypeServicesController < ApplicationController
  before_action :set_type_service, only: %i[ show edit update destroy ]

  # GET /type_services or /type_services.json
  def index
    @type_services = TypeService.all
  end

  # GET /type_services/1 or /type_services/1.json
  def show
  end

  # GET /type_services/new
  def new
    @type_service = TypeService.new
  end

  # GET /type_services/1/edit
  def edit
  end

  # POST /type_services or /type_services.json
  def create
    @type_service = TypeService.new(type_service_params)

    respond_to do |format|
      if @type_service.save
        format.html { redirect_to @type_service, notice: "Type service was successfully created." }
        format.json { render :show, status: :created, location: @type_service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @type_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_services/1 or /type_services/1.json
  def update
    respond_to do |format|
      if @type_service.update(type_service_params)
        format.html { redirect_to @type_service, notice: "Type service was successfully updated." }
        format.json { render :show, status: :ok, location: @type_service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @type_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_services/1 or /type_services/1.json
  def destroy
    @type_service.destroy
    respond_to do |format|
      format.html { redirect_to type_services_url, notice: "Type service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_service
      @type_service = TypeService.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def type_service_params
      params.require(:type_service).permit(:name)
    end
end
