class OrderItemsController < ApplicationController
  # before_action :set_order_item, only: [:show, :create, :edit, :update, :destroy]

  # GET /order_items
  # def index
  #   @order_items = OrderItem.all
  # end

  # GET /order_items/1
  # def show
  # end

  # GET /order_items/new
  # def new
  #   @order_item = OrderItem.new
  # end

  # GET /order_items/1/edit
  # def edit
  # end

  # POST /order_items
  def create
    @order = current_order
    @order_item = @order.order_items.new(order_item_params)
    @order.save
    session[:order_id] = @order.id

    # if @order_item.save
    #   redirect_to @order_item, notice: 'Order item was successfully created.'
    # else
    #   render :new
    # end
  end

  # PATCH/PUT /order_items/1
  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items

    # @order = current_order
    # @order_item = @order.order_items.find(params[:id])
    # if @order_item.update_attributes(order_item_params)
    #   @order_items = @order.order_items
    #   redirect_to @order_item, notice: 'Order item was successfully updated.'
    # else
    #   render :edit
    # end
  end

  # DELETE /order_items/1
  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy
    redirect_to carts_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_order_item
    #   @order_item = OrderItem.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_item_params
      params.require(:order_item).permit(:product_id, :order_id, :fabric_design, :order_item_status, :shipping, :price, :name, :quantity)
    end
end
