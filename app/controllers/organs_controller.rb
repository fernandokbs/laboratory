class OrgansController < ApplicationController
  before_action :set_organ, only: %i[ show edit update destroy ]

  # GET /organs or /organs.json
  def index
    @organs = Organ.all
  end

  # GET /organs/1 or /organs/1.json
  def show
  end

  # GET /organs/new
  def new
    @organ = Organ.new
  end

  # GET /organs/1/edit
  def edit
  end

  # POST /organs or /organs.json
  def create
    @organ = Organ.new(organ_params)

    respond_to do |format|
      if @organ.save
        format.html { redirect_to @organ, notice: "Organ was successfully created." }
        format.json { render :show, status: :created, location: @organ }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @organ.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organs/1 or /organs/1.json
  def update
    respond_to do |format|
      if @organ.update(organ_params)
        format.html { redirect_to @organ, notice: "Organ was successfully updated." }
        format.json { render :show, status: :ok, location: @organ }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @organ.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organs/1 or /organs/1.json
  def destroy
    @organ.destroy
    respond_to do |format|
      format.html { redirect_to organs_url, notice: "Organ was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organ
      @organ = Organ.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organ_params
      params.fetch(:organ, {})
    end
end
