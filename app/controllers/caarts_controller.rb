class CaartsController < ApplicationController
  before_action :set_caart, only: [:show, :edit, :update, :destroy]

  # GET /caarts
  # GET /caarts.json
  def index
    @caarts = Caart.all
  end

  # GET /caarts/1
  # GET /caarts/1.json
  def show
  end

  # GET /caarts/new
  def new
    @caart = Caart.new
  end

  # GET /caarts/1/edit
  def edit
  end

  # POST /caarts
  # POST /caarts.json
  def create
    @caart = Caart.new(caart_params)

    respond_to do |format|
      if @caart.save
        format.html { redirect_to @caart, notice: 'Caart was successfully created.' }
        format.json { render action: 'show', status: :created, location: @caart }
      else
        format.html { render action: 'new' }
        format.json { render json: @caart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caarts/1
  # PATCH/PUT /caarts/1.json
  def update
    respond_to do |format|
      if @caart.update(caart_params)
        format.html { redirect_to @caart, notice: 'Caart was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @caart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caarts/1
  # DELETE /caarts/1.json
  def destroy
    @caart.destroy
    respond_to do |format|
      format.html { redirect_to caarts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caart
      @caart = Caart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caart_params
      params[:caart]
    end
end
