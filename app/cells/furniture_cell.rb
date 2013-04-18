class FurnitureCell < Cell::Rails

  def index
    @allproducts = Product.allprods
    render
  end

end
