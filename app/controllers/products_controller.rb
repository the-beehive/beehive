class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  # GET /products/1
  # GET /products/1.json
  def show
    # THIS MIGHT NEED TO GO IN INDEX. ACCORDING TO RICH ON RAILS.
    @order_item = current_order.order_items.new
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    @order_item = current_order.order_items.new
    if @product.save
      if params[:image]
        @product.images.create(uploaded_file: params[:image])
      end
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update

    @order_item = current_order.order_items.new
    if @product.update(product_params)
      if params[:image]
        @product.images.create(uploaded_file: params[:image])
      end
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    redirect_to products_url, notice: 'Product was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:user_id, :name, :description, :yardage, :fabric_type, :shipping, :price)
    end
end
