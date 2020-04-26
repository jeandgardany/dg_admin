class FileUploadsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
  end
  def create
    @product = Product.find(params[:product_id])
    @product.files.attach(params[:product][:files])
    redirect_to product_path(@product)
  end
  def destroy
    @product = Product.find(params[:product_id])
    @product.files.find(params[:id]).purge
    redirect_to product_path(@product)
  end
end
