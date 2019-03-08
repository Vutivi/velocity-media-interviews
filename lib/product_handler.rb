require 'pry'
class ProductHandler
  def increase_product_fee product, increase_percentage
    (product.service_fee + (product.service_fee * (increase_percentage.to_f / 100))).to_i
  end
end
