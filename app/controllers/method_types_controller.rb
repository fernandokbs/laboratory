class MethodTypesController < ApplicationController
  before_action :set_method_type, only: %i[ show edit update destroy ]

  # GET /method_types or /method_types.json
  def index
    @method_types = MethodType.all
  end

  # GET /method_types/1 or /method_types/1.json
  def show
  end

  # GET /method_types/new
  def new
    @method_type = MethodType.new
  end

  # GET /method_types/1/edit
  def edit
  end

  # POST /method_types or /method_types.json
  def create
    @method_type = MethodType.new(method_type_params)

    respond_to do |format|
      if @method_type.save
        format.html { redirect_to @method_type, notice: "Method type was successfully created." }
        format.json { render :show, status: :created, location: @method_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @method_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /method_types/1 or /method_types/1.json
  def update
    respond_to do |format|
      if @method_type.update(method_type_params)
        format.html { redirect_to @method_type, notice: "Method type was successfully updated." }
        format.json { render :show, status: :ok, location: @method_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @method_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /method_types/1 or /method_types/1.json
  def destroy
    @method_type.destroy
    respond_to do |format|
      format.html { redirect_to method_types_url, notice: "Method type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_method_type
      @method_type = MethodType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def method_type_params
      params.require(:method_type).permit(:description, :macroscopy, :diagnosis)
    end
end
