class RoomManagersController < ApplicationController
  before_action :set_room_manager, only: %i[ show edit update destroy ]

  # GET /room_managers or /room_managers.json
  def index
    @room_managers = RoomManager.all
  end

  # GET /room_managers/1 or /room_managers/1.json
  def show
  end

  # GET /room_managers/new
  def new
    @room_manager = RoomManager.new
  end

  # GET /room_managers/1/edit
  def edit
  end

  # POST /room_managers or /room_managers.json
  def create
    @room_manager = RoomManager.new(room_manager_params)

    respond_to do |format|
      if @room_manager.save
        format.html { redirect_to @room_manager, notice: "Room manager was successfully created." }
        format.json { render :show, status: :created, location: @room_manager }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @room_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_managers/1 or /room_managers/1.json
  def update
    respond_to do |format|
      if @room_manager.update(room_manager_params)
        format.html { redirect_to @room_manager, notice: "Room manager was successfully updated." }
        format.json { render :show, status: :ok, location: @room_manager }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @room_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_managers/1 or /room_managers/1.json
  def destroy
    @room_manager.destroy
    respond_to do |format|
      format.html { redirect_to room_managers_url, notice: "Room manager was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_manager
      @room_manager = RoomManager.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def room_manager_params
      params.require(:room_manager).permit(:first_name, :last_name, :email, :phone, :address)
    end
end
