class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  def index
    if params[:search]
      @products = Product.search(params[:search])
    else
      @products = Product.all
    end

    if @products.blank?
      flash.now[:notice] = "No products matched your search. Please try another term."
      @products = Product.all
    end
  end

  # GET /products/1
  def show
    @fabric_search_results = Product.fabric_search(params[:fabric])
  end

  # Update the fabric search results using AJAX and jQuery magic.
  def fabric
    @fabric_search_results = Product.fabric_search(params[:fabric])
    render 'products/fabric'
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
  def update
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
    redirect_to products_path, notice: 'Product was successfully destroyed.'
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
