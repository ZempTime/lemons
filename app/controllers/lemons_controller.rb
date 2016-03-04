class LemonsController < ApplicationController
  before_action :set_lemon, only: [:show, :edit, :update, :destroy]

  # GET /lemons
  # GET /lemons.json
  def index
    @lemons = Lemon.all
  end

  # GET /lemons/1
  # GET /lemons/1.json
  def show
  end

  # GET /lemons/new
  def new
    @lemon = Lemon.new
  end

  # GET /lemons/1/edit
  def edit
  end

  # POST /lemons
  # POST /lemons.json
  def create
    @lemon = Lemon.new(lemon_params)

    respond_to do |format|
      if @lemon.save
        format.html { redirect_to @lemon, notice: 'Lemon was successfully created.' }
        format.json { render :show, status: :created, location: @lemon }
      else
        format.html { render :new }
        format.json { render json: @lemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lemons/1
  # PATCH/PUT /lemons/1.json
  def update
    respond_to do |format|
      if @lemon.update(lemon_params)
        format.html { redirect_to @lemon, notice: 'Lemon was successfully updated.' }
        format.json { render :show, status: :ok, location: @lemon }
      else
        format.html { render :edit }
        format.json { render json: @lemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lemons/1
  # DELETE /lemons/1.json
  def destroy
    @lemon.destroy
    respond_to do |format|
      format.html { redirect_to lemons_url, notice: 'Lemon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lemon
      @lemon = Lemon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lemon_params
      params.require(:lemon).permit(:name, :description)
    end
end
