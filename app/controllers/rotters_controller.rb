class RottersController < ApplicationController
  before_action :set_rotter, only: [:show, :edit, :update, :destroy]

  # GET /rotters
  # GET /rotters.json
  def index
    @rotters = Rotter.all
  end

  # GET /rotters/1
  # GET /rotters/1.json
  def show
  end

  # GET /rotters/new
  def new
    @rotter = Rotter.new
  end

  # GET /rotters/1/edit
  def edit
  end

  # POST /rotters
  # POST /rotters.json
  def create
    @rotter = Rotter.new(rotter_params)

    respond_to do |format|
      if @rotter.save
        format.html { redirect_to @rotter, notice: 'Rotter was successfully created.' }
        format.json { render :show, status: :created, location: @rotter }
      else
        format.html { render :new }
        format.json { render json: @rotter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rotters/1
  # PATCH/PUT /rotters/1.json
  def update
    respond_to do |format|
      if @rotter.update(rotter_params)
        format.html { redirect_to @rotter, notice: 'Rotter was successfully updated.' }
        format.json { render :show, status: :ok, location: @rotter }
      else
        format.html { render :edit }
        format.json { render json: @rotter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rotters/1
  # DELETE /rotters/1.json
  def destroy
    @rotter.destroy
    respond_to do |format|
      format.html { redirect_to rotters_url, notice: 'Rotter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rotter
      @rotter = Rotter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rotter_params
      params.require(:rotter).permit(:name, :email)
    end
end
