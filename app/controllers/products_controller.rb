# frozen_string_literal: true

# Controller for handling product-related actions.
class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
end
