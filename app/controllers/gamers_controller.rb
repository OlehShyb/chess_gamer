class GamersController < ApplicationController
  before_action :set_gamer, only: %i[ show edit update destroy ]

  # GET /gamers or /gamers.json
  def index
    @gamers = Gamer.all
  end

  # GET /gamers/1 or /gamers/1.json
  def show
  end

  # GET /gamers/new
  def new
    @gamer = Gamer.new
  end

  # GET /gamers/1/edit
  def edit
  end

  def puzzle
  end
  # POST /gamers or /gamers.json
  def create
    # @gamer = Gamer.new(gamer_params)
    @gamer = Gamer.new()
    respond_to do |format|
      if @gamer.save
        format.html { redirect_to gamer_url(@gamer), notice: "Gamer was successfully created." }
        format.json { render :show, status: :created, location: @gamer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gamer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gamers/1 or /gamers/1.json
  def update
    respond_to do |format|
      if @gamer.update(gamer_params)
        format.html { redirect_to gamer_url(@gamer), notice: "Gamer was successfully updated." }
        format.json { render :show, status: :ok, location: @gamer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gamer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gamers/1 or /gamers/1.json
  def destroy
    @gamer.destroy

    respond_to do |format|
      format.html { redirect_to gamers_url, notice: "Gamer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gamer
      @gamer = Gamer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gamer_params
      params.require(:gamer).permit(:first_name, :second_name, :birth_date, :gender, :phone_number, :email, :instagram)
    end
end
