class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    
    if @product.save
      UserMailer.with(user: current_user).welcome_email.deliver_now
      redirect_to product_path(@product)
    else
      render :new 
    end
  end

  def destroy
    @product = Product.find(params[:id])
    
    @product.destroy
    redirect_to root_path
  end

  def edit
    @product = Product.find(params[:id])
    
  end
  def update
    @product = Product.find(params[:id])
    
    if @product.update(product_params)
      redirect_to @product
    else
      render :edit
    end
  end


  private
    def product_params
      params.require(:product).permit(:name, :dose, :price, :category_id, :med_pic)
    end

end
