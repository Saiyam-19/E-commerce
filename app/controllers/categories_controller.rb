class CategoriesController < ApplicationController
  def show
    @category = Category.find(parmas[:id])
    @products = @category.products.all
  end
end
