class MyItemsController < ApplicationController
  before_action :set_my_item, only: [:show, :edit, :update, :destroy]

  # GET /my_items
  # GET /my_items.json
  def index
    @my_items = MyItem.all
  end

  # GET /my_items/1
  # GET /my_items/1.json
  def show
  end

  # GET /my_items/new
  def new
    @my_item = MyItem.new
  end

  # GET /my_items/1/edit
  def edit
  end

  # POST /my_items
  # POST /my_items.json
  def create
    #@my_item = MyItem.new(my_item_params)

    @caart = current_caart
    component = Component.find(params[:component_id])
    @my_item = @caart.add_component(component.id)
    @my_item = @caart.my_items.build(:component => component)

    respond_to do |format|
      if @my_item.save
        format.html { redirect_to @my_item, notice: 'Line item was successfully added to cart.' }
        format.json { render action: 'show', status: :created, location: @my_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @my_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_items/1
  # PATCH/PUT /my_items/1.json
  def update
    respond_to do |format|
      if @my_item.update(my_item_params)
        format.html { redirect_to @my_item, notice: 'Line item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @my_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_items/1
  # DELETE /my_items/1.json
  def destroy
    @my_item.destroy
    respond_to do |format|
      format.html { redirect_to my_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_item
      @my_item = MyItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_item_params
      params.require(:my_item).permit(:component_id, :caart_id)
    end
end
