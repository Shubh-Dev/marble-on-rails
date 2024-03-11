# frozen_string_literal: true

# Controller for handling product-related actions.
class ProductsController < ApplicationController
  def index
    @products = Product.page(params[:page]).per(10)
  end
end
