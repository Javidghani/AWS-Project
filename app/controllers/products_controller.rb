class ProductsController < ApplicationController
  def index
    if params[:category_slug]
      @category = Category.find_by(slug: params[:category_slug])
      if @category
        @products = @category.products
      else
        redirect_to categories_path, alert: "Category not found"
      end
    else
      @products = Product.all
    end
  end
end
class ProductsController < ApplicationController
  def index
    if params[:category_slug]
      @category = Category.find_by(slug: params[:category_slug])
      @products = @category ? @category.products : Product.all
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
