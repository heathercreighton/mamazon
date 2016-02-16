class StorefrontController < ApplicationController
  def all_items
  	@products = Product.all
  end

  def items_by_category
  #link to this page would be from your index
  #<%= link_to product.category.name, categorical_path(category_id: product.category.id)	%>
  	@products = Product.where(category: params[:category_id])
  #	@categories = Category.where(id: category_id)
  end

  def items_by_brand
 #link to this page would be from your index
 #<%= link_to product.category.name, brand_path(brand: product.brand)	%> 	
  	@products = Product.where(brand: params[:brand])
  end
end
