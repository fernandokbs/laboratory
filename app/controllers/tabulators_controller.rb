class TabulatorsController < ApplicationController
  before_action :set_tabulator, only: %i[ show edit update destroy ]

  # GET /tabulators or /tabulators.json
  def index
    @tabulators = Tabulator.all
  end

  # GET /tabulators/1 or /tabulators/1.json
  def show
  end

  # GET /tabulators/new
  def new
    @tabulator = Tabulator.new
  end

  # GET /tabulators/1/edit
  def edit
  end

  # POST /tabulators or /tabulators.json
  def create
    @tabulator = Tabulator.new(tabulator_params)

    respond_to do |format|
      if @tabulator.save
        format.html { redirect_to @tabulator, notice: "Tabulator was successfully created." }
        format.json { render :show, status: :created, location: @tabulator }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tabulator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tabulators/1 or /tabulators/1.json
  def update
    respond_to do |format|
      if @tabulator.update(tabulator_params)
        format.html { redirect_to @tabulator, notice: "Tabulator was successfully updated." }
        format.json { render :show, status: :ok, location: @tabulator }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tabulator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tabulators/1 or /tabulators/1.json
  def destroy
    @tabulator.destroy
    respond_to do |format|
      format.html { redirect_to tabulators_url, notice: "Tabulator was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tabulator
      @tabulator = Tabulator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tabulator_params
      params.require(:tabulator).permit(:name)
    end
end
