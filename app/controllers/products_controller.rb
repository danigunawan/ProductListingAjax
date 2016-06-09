class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @products = Product.all
    @product = Product.create(product_params)
    @notice = "Product Successfully Created"
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    @products = Product.all
    @product.update(product_params)
    @notice = "Product Successfully Updated"
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @products = Product.all
    @product.destroy
    @notice = "Product was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :price)
    end
end
